package com.javaweb.service.impl;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.converter.BuildingSearchBuilderConverter;
import com.javaweb.entity.AssignmentBuildingEntity;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.AssignmentBuildingRepository;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.ListRentAreaRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.repository.custom.BuildingRepositoryCustom;
import com.javaweb.repository.custom.ListRentAreaRepositoryCustom;
import com.javaweb.service.IBuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class BuildingService implements IBuildingService {
    @Autowired
    private BuildingRepository buildingRepository;
    @Autowired
    private BuildingRepositoryCustom buildingRepositoryCustom;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BuildingSearchBuilderConverter buildingSearchBuilderConverter;
    @Autowired
    private ListRentAreaRepositoryCustom listRentAreaRepositoryCustom;
    @Autowired
    private ListRentAreaRepository listRentAreaRepository;
    @Autowired
    private AssignmentBuildingRepository assignmentBuildingRepository;

    @Override
    public List<BuildingSearchResponse> findAll(Map<String, Object> param, List<String> typeCode) {
        BuildingSearchBuilder builder = buildingSearchBuilderConverter.toBuildingSearchBuilder(param, typeCode);
        List<BuildingEntity> buildingEntities = buildingRepositoryCustom.findAll(builder);
        List<BuildingSearchResponse> result = new ArrayList<>();
        for (BuildingEntity it : buildingEntities) {
            BuildingSearchResponse buildingSearchResponse = new BuildingSearchResponse();
            buildingSearchResponse.setId(it.getId());
            buildingSearchResponse.setName(it.getName());
            result.add(buildingSearchResponse);
        }
        return result;
    }

    @Override
    public ResponseDTO listStaffs(Long id) {
        List<UserEntity> staffs = userRepository.findByStatusAndRoles_Code(1, "STAFF");
        BuildingEntity buildingEntity = buildingRepository.findById(id).get();
        if (buildingEntity == null) {
            System.out.println("Building not found");
        }
        List<StaffResponseDTO> responseDTOS = new ArrayList<>();
        List<AssignmentBuildingEntity> assignmentBuildingEntities = buildingEntity.getBuildingId();
        ResponseDTO result = new ResponseDTO();

        for (UserEntity it : staffs) {
            StaffResponseDTO staffDTO = new StaffResponseDTO();
            staffDTO.setFullName(it.getFullName());
            staffDTO.setStaffId(it.getId());
            for (AssignmentBuildingEntity it1 : assignmentBuildingEntities) {
                Long staffId = it1.getStaffId().getId();
                if (staffId.equals(it.getId())) {
                    staffDTO.setChecked("checked");
                } else {
                    staffDTO.setChecked("");
                }
            }
            responseDTOS.add(staffDTO);
        }
        result.setData(responseDTOS);
        result.setMessage("Thành công");

        return result;
    }

    @Override
    @Transactional
    public void deleteBuilding(List<Long> ids) {
        for(Long list : ids) {
           List<RentAreaEntity> rentAreaEntities = listRentAreaRepositoryCustom.listRentArea(list);
            List<AssignmentBuildingEntity> results = assignmentBuildingRepository.findAll();
           for (RentAreaEntity it : rentAreaEntities) {
               listRentAreaRepository.deleteByBuildingId(it.getId());
           }
           for (AssignmentBuildingEntity it : results) {
               if (it.getBuildingId().getId().equals(list)) {
                   assignmentBuildingRepository.deleteById(it.getId());
               }
           }
              buildingRepository.deleteById(list);
        }
    }
}

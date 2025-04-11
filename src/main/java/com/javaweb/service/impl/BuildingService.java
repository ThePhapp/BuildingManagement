package com.javaweb.service.impl;

import com.javaweb.entity.AssignmentBuildingEntity;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.IBuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class BuildingService implements IBuildingService {
    @Autowired
    private BuildingRepository buildingRepository;
    @Autowired
    private UserRepository userRepository;

    @Override
    public List<BuildingDTO> findAll() {
        List<BuildingEntity> entities = buildingRepository.findAll();

        // Chuyển đổi từ Entity sang DTO
        return entities.stream().map(entity -> {
            BuildingDTO dto = new BuildingDTO();
            dto.setId(entity.getId());
            dto.setName(entity.getName());
            dto.setManagerName(entity.getManagerName());
            return dto;
        }).collect(Collectors.toList());
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
                    break;
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
}

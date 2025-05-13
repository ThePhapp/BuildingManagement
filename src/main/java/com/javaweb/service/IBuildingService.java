package com.javaweb.service;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.TypeCodeResponseDTO;

import java.util.List;
import java.util.Map;

public interface IBuildingService {
    List<BuildingSearchResponse> findAll(Map<String, Object> params, List<String> rentType);
    ResponseDTO listStaffs(Long id);
    void deleteBuilding(List<Long> ids);
    void saveBuilding(BuildingEntity buildingEntity);
    BuildingDTO insertOrUpdateBuilding(BuildingDTO buildingDTO);
    BuildingEntity findById(Long id);
    String listRentArea(Long id);
    TypeCodeResponseDTO listTypeCode(Long id);
}

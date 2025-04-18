package com.javaweb.service;

import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.model.response.ResponseDTO;

import java.util.List;
import java.util.Map;

public interface IBuildingService {
    List<BuildingSearchResponse> findAll(Map<String, Object> params, List<String> rentType);
    ResponseDTO listStaffs(Long id);
}

package com.javaweb.service;

import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;

import java.util.List;

public interface IBuildingService {
    List<BuildingDTO> findAll();
    ResponseDTO listStaffs(Long id);
}

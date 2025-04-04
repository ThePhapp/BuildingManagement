package com.javaweb.service;

import com.javaweb.model.dto.BuildingDTO;

import java.util.List;

public interface IBuildingService {
    List<BuildingDTO> findAll();
}

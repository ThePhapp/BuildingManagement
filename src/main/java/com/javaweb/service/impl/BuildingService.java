package com.javaweb.service.impl;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.service.IBuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class BuildingService implements IBuildingService {
    @Autowired
    private BuildingRepository buildingRepository;

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
}

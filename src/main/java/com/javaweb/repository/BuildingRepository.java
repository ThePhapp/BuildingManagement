package com.javaweb.repository;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.dto.BuildingDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

//@Repository
public interface BuildingRepository extends JpaRepository<BuildingEntity, Long> {
    List<BuildingEntity> findAll();
}

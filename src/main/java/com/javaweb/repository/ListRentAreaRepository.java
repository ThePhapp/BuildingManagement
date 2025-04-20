package com.javaweb.repository;

import com.javaweb.entity.RentAreaEntity;
import com.javaweb.repository.custom.ListRentAreaRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ListRentAreaRepository extends JpaRepository<RentAreaEntity, Long> {
    RentAreaEntity deleteByBuildingId(Long id);

}
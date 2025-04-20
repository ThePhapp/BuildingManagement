package com.javaweb.repository.custom;

import com.javaweb.entity.RentAreaEntity;

import java.util.List;

public interface ListRentAreaRepositoryCustom {
    List<RentAreaEntity> listRentArea(Long buildingId);
}

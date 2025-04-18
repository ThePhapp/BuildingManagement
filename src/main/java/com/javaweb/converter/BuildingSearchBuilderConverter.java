package com.javaweb.converter;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.security.utils.SecurityUtils;
import com.javaweb.utils.MapUtils;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public class BuildingSearchBuilderConverter {
    public BuildingSearchBuilder toBuildingSearchBuilder(Map<String, Object> mp, List<String> typeCode) {
        if(SecurityUtils.getAuthorities().contains("ROLE_STAFF")) {
            Long staffId = SecurityUtils.getPrincipal().getId();

            BuildingSearchBuilder buildingSearchBuilder = new BuildingSearchBuilder.BuildingBuilder()
                    .setName(MapUtils.getObject(mp, "name", String.class))
                    .setFloorArea(MapUtils.getObject(mp, "floorArea", Integer.class))
                    .setWard(MapUtils.getObject(mp, "ward", String.class))
                    .setStreet(MapUtils.getObject(mp, "street", String.class))
                    .setDistrist(MapUtils.getObject(mp, "district", String.class))
                    .setNumberOfBasement(MapUtils.getObject(mp, "numberOfBasement", Long.class))
                    .setTypeCode(typeCode)
                    .setManagerName(MapUtils.getObject(mp, "managerName", String.class))
                    .setManagerPhoneNumber(MapUtils.getObject(mp, "managerPhone", String.class))
                    .setRentPriceFrom(MapUtils.getObject(mp, "rentPriceFrom", Integer.class))
                    .setrentPriceTo(MapUtils.getObject(mp, "rentPriceTo", Integer.class))
                    .setRentAreaFrom(MapUtils.getObject(mp, "rentAreaFrom", Long.class))
                    .setRentAreaTo(MapUtils.getObject(mp, "rentAreaTo", Long.class))
                    .setStaffId(staffId)
                    .build();
            return buildingSearchBuilder;
        }
        else{
            BuildingSearchBuilder buildingSearchBuilder = new BuildingSearchBuilder.BuildingBuilder()
                    .setName(MapUtils.getObject(mp, "name", String.class))
                    .setFloorArea(MapUtils.getObject(mp, "floorArea", Integer.class))
                    .setWard(MapUtils.getObject(mp, "ward", String.class))
                    .setStreet(MapUtils.getObject(mp, "street", String.class))
                    .setDistrist(MapUtils.getObject(mp, "district", String.class))
                    .setNumberOfBasement(MapUtils.getObject(mp, "numberOfBasement", Long.class))
                    .setTypeCode(typeCode)
                    .setManagerName(MapUtils.getObject(mp, "managerName", String.class))
                    .setManagerPhoneNumber(MapUtils.getObject(mp, "managerPhone", String.class))
                    .setRentPriceFrom(MapUtils.getObject(mp, "rentPriceFrom", Integer.class))
                    .setrentPriceTo(MapUtils.getObject(mp, "rentPriceTo", Integer.class))
                    .setRentAreaFrom(MapUtils.getObject(mp, "rentAreaFrom", Long.class))
                    .setRentAreaTo(MapUtils.getObject(mp, "rentAreaTo", Long.class))
                    .setStaffId(MapUtils.getObject(mp, "staffId", Long.class))
                    .build();
            return buildingSearchBuilder;
        }
    }
}
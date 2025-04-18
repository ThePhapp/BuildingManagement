//package com.javaweb.converter;
//
//import com.javaweb.model.response.BuildingSearchResponse;
//import com.javaweb.entity.BuildingEntity;
//import com.javaweb.entity.RentAreaEntity;
//import com.javaweb.enums.districtCode;
//import org.modelmapper.ModelMapper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
//
//import java.util.List;
//import java.util.stream.Collectors;
//
//@Component
//public class BuildingSearchConverter {
//    @Autowired
//    private ModelMapper modelMapper;
//
//    public BuildingSearchResponse toBuildingResponse(BuildingEntity buildingEntities){
//        BuildingSearchResponse buildingSearchResponse = modelMapper.map(buildingEntities, BuildingSearchResponse.class);
//        List<RentAreaEntity> rentArea = buildingEntities.getRentAreas();
//        //java-8
//        String listRentArea = rentArea.stream().map(it -> it.getValue().toString()).collect(Collectors.joining(","));
//        buildingSearchResponse.setRentArea(listRentArea);
//        if(buildingEntities.getWard() == null || buildingEntities.getWard().equals("")){
//            buildingEntities.setWard("null");
//        }
//        if(buildingEntities.getStreet() == null || buildingEntities.getStreet().equals("")){
//            buildingEntities.setStreet("null");
//        }
//        if(buildingEntities.getDistrict() == null || buildingEntities.getDistrict().equals("")){
//            buildingSearchResponse.setAddress(buildingEntities.getStreet()+","+buildingEntities.getWard()+","+districtCode.valueOf("NULL").getDistrictName());
//        }
//        else{
//            buildingSearchResponse.setAddress(buildingEntities.getStreet()+","+buildingEntities.getWard()+","+districtCode.valueOf(buildingEntities.getDistrict()).getDistrictName());
//        }
//
//        return buildingSearchResponse;
//    }
//}
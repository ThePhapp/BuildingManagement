package com.javaweb.api.admin;

import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.TypeCodeResponseDTO;
import com.javaweb.service.impl.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController("buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {

    @Autowired
    private BuildingService buildingService;

    @PostMapping
    public BuildingDTO addOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO) {
        // Logic to add or update building in db
        return buildingService.insertOrUpdateBuilding(buildingDTO);
    }

    @DeleteMapping("/{ids}")
    public void deleteBuilding(@PathVariable List<Long> ids) {
        buildingService.deleteBuilding(ids);
    }

    @GetMapping("/{buildingId}/typeCodes")
    public TypeCodeResponseDTO loadTypeCode(@PathVariable("buildingId") Long id) {
        return buildingService.listTypeCode(id);
    }

    @GetMapping("/{id}/staffs")
    public ResponseDTO loadStaff(@PathVariable Long id) {
        ResponseDTO result = buildingService.listStaffs(id);
        return result;
    }
}

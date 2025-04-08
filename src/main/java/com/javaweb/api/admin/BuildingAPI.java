package com.javaweb.api.admin;

import com.javaweb.model.dto.BuildingDTO;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController("buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {

    @PostMapping
    public BuildingDTO addOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO) {
        // Logic to add or update building in db
        return buildingDTO;
    }

    @DeleteMapping("/{ids}")
    public void deleteBuilding(@PathVariable List<Long> ids) {
        // Logic to delete building from db
        System.out.println("Deleted buildings with ids: " + ids);
    }
}

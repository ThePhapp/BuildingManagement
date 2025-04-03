package com.javaweb.controller.admin;



import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {

    @RequestMapping(value = "/admin/building-list", method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute BuildingDTO buildingDTO, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("modelSearch", buildingDTO);
        //Xu ly lay du lieu tu database

        List<BuildingSearchResponse> responseList = new ArrayList<>();
        BuildingSearchResponse buildingSearchResponse = new BuildingSearchResponse();
        buildingSearchResponse.setId(3L);
        buildingSearchResponse.setName("ThePhap");
        buildingSearchResponse.setAddress("HaNoi");
        buildingSearchResponse.setNumberOfBasement(2L);
        buildingSearchResponse.setManagerName("TranThe");

        BuildingSearchResponse buildingSearchResponse1 = new BuildingSearchResponse();
        buildingSearchResponse1.setId(4L);
        buildingSearchResponse1.setName("ThePhap123");
        buildingSearchResponse1.setAddress("HaNoi1");
        buildingSearchResponse1.setNumberOfBasement(2L);
        buildingSearchResponse1.setManagerName("TranThe1");

        responseList.add(buildingSearchResponse);
        responseList.add(buildingSearchResponse1);
        mav.addObject("responseList", responseList);
        return mav;
    }

    @RequestMapping(value = "/admin/building-edit", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute("BuildingEdit") BuildingSearchRequest buildingSearchRequest, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit");
        return mav;
    }

    @RequestMapping(value = "/admin/building-edit-{id}", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("id") long id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit");
        //xuong db tim building theo id
        BuildingDTO buildingDTO = new BuildingDTO();
        buildingDTO.setId(id);
        buildingDTO.setName("ThePhap");
        mav.addObject("BuildingEdit", buildingDTO);
        return mav;
    }
}

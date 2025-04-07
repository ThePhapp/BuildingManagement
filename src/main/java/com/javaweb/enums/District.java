package com.javaweb.enums;

import java.util.Map;
import java.util.TreeMap;

public enum District {
    QUAN_1("Nam Tu Liem"),
    QUAN_2("Cau Giay"),
    QUAN_3("Hoan Kiem"),
    QUAN_4("Ba Dinh"),
    QUAN_5("Hai Ba Trung"),
    QUAN_6("Dong Da"),
    QUAN_7("Thanh Xuan"),
    QUAN_8("Long Bien"),
    QUAN_9("Hoang Mai"),
    ;

    private final String districtName;

    District(String districtName) {
        this.districtName = districtName;
    }

    public static Map<String, String> getDistricts() {
        Map<String, String> districts = new TreeMap<>();
        for (District district : District.values()) {
            districts.put(district.name(), district.districtName);
        }
        return districts;
    }
}

package com.javaweb.enums;

import java.util.Map;
import java.util.TreeMap;

public enum TypeCode {
    TANG_TRET("Tầng trệt"),
    NGUYEN_CAN("Nguyên căn"),
    NOI_THAT("Nội thất"),
    ;

    private final String typeName;

    TypeCode(String typeName) {
        this.typeName = typeName;
    }

    public static Map<String, String> getTypeCodes() {
        Map<String, String> typeCodes = new TreeMap<>();
        for (TypeCode typeCode : TypeCode.values()) {
            typeCodes.put(typeCode.name(), typeCode.typeName);
        }
        return typeCodes;
    }
}

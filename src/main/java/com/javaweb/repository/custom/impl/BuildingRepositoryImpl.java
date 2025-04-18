package com.javaweb.repository.custom.impl;

import com.javaweb.builder.BuildingSearchBuilder;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.repository.custom.BuildingRepositoryCustom;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.lang.reflect.Field;
import java.util.List;
import java.util.stream.Collectors;

@Repository
@PropertySource("classpath:application.properties")
public class BuildingRepositoryImpl implements BuildingRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    public void queryJoinTable(BuildingSearchBuilder builder, StringBuilder join) {
        Long staffId = builder.getStaffId();
        if (staffId != null) {
            join.append(" INNER JOIN assignmentbuilding ON b.id = assignmentbuilding.buildingid ");
        }
    }

    public void querySimple(BuildingSearchBuilder builder, StringBuilder where) {
        try {
            Field[] fields = BuildingSearchBuilder.class.getDeclaredFields();
            for (Field item : fields) {
                item.setAccessible(true);
                String fieldName = item.getName();
                if (!fieldName.equals("staffId") && !fieldName.equals("typeCode")
                        && !fieldName.startsWith("rentArea") && !fieldName.startsWith("rentPrice")) {
                    Object value = item.get(builder);
                    if (value != null) {
                        if (item.getType().getName().equals("java.lang.String")) {
                            where.append(" AND b.").append(fieldName.toLowerCase())
                                    .append(" LIKE '%").append(value).append("%'");
                        } else if (item.getType().getName().equals("java.lang.Integer")
                                || item.getType().getName().equals("java.lang.Long")) {
                            where.append(" AND b.").append(fieldName.toLowerCase())
                                    .append(" = ").append(value);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void querySpecial(BuildingSearchBuilder builder, StringBuilder where) {
        Integer rentPriceFrom = builder.getRentPriceFrom();
        Integer rentPriceTo = builder.getRentPriceTo();
        Long areaFrom = builder.getRentAreaFrom();
        Long areaTo = builder.getRentAreaTo();
        Long staffId = builder.getStaffId();

        if (rentPriceFrom != null) {
            where.append(" AND b.rentprice >= ").append(rentPriceFrom);
        }
        if (rentPriceTo != null) {
            where.append(" AND b.rentprice <= ").append(rentPriceTo);
        }
        if (areaFrom != null || areaTo != null) {
            where.append(" AND EXISTS (SELECT * FROM rentarea r WHERE r.buildingid = b.id ");
            if (areaFrom != null) {
                where.append(" AND r.value >= ").append(areaFrom);
            }
            if (areaTo != null) {
                where.append(" AND r.value <= ").append(areaTo);
            }
            where.append(")");
        }
        if (staffId != null) {
            where.append(" AND assignmentbuilding.staffid = ").append(staffId);
        }

        List<String> typeCode = builder.getTypeCode();
        if (typeCode != null && !typeCode.isEmpty()) {
            where.append(" AND (");
            String typeQuery = typeCode.stream()
                    .map(code -> "b.type LIKE '%" + code + "%'")
                    .collect(Collectors.joining(" OR "));
            where.append(typeQuery).append(")");
        }
    }

    @Override
    public List<BuildingEntity> findAll(BuildingSearchBuilder builder) {
        StringBuilder sql = new StringBuilder("SELECT b.* FROM building b ");
        StringBuilder join = new StringBuilder();
        queryJoinTable(builder, join);

        StringBuilder where = new StringBuilder(" WHERE 1=1 ");
        querySimple(builder, where);
        querySpecial(builder, where);

        sql.append(join);
        sql.append(where);
        sql.append(" GROUP BY b.id");

        Query query = entityManager.createNativeQuery(sql.toString(), BuildingEntity.class);
        return query.getResultList();
    }
}

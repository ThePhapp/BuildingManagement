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
        try{
            Field[] fields = BuildingSearchBuilder.class.getDeclaredFields();
            for(Field item : fields) {
               item.setAccessible(true);
                String fieldName = item.getName();
                if(!fieldName.equals("staffId") && !fieldName.equals("typeCode") && !fieldName.startsWith("rentArea") && !fieldName.startsWith("rentPrice")) {
                    Object value = item.get(builder);
                    if(value != null) {
                        if(item.getType().getName().equals("java.lang.String")) {
                            where.append(" AND b."+ fieldName.toLowerCase() +" like '%"+value+"%'");
                        }
                        else if(item.getType().getName().equals("java.lang.Integer")) {
                            where.append(" AND b." +fieldName.toLowerCase() + " = "+ value);
                        }
                        else if(item.getType().getName().equals("java.lang.Long")) {
                            where.append(" AND b." +fieldName.toLowerCase() + " = "+ value);
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
        if(rentPriceFrom != null) {
            where.append(" AND b.rentprice >= "+rentPriceFrom);
        }
        if(rentPriceTo != null) {
            where.append(" AND b.rentprice <= "+rentPriceTo);
        }
        if((areaFrom!=null)||areaTo!=null) {
            where.append(" AND EXISTS (SELECT * FROM rentarea r WHERE b.id = r.buildingid ");
            if(areaFrom != null) {
                where.append(" AND r.value >= "+ areaFrom);
            }
            if(areaTo !=null) {
                where.append(" AND r.value <= "+ areaTo);
            }
            where.append(") ");
        }
        if(staffId!=null) {
            where.append(" AND assignmentbuilding.staffid = "+ staffId);
        }
        List<String>typeCode = builder.getTypeCode();
        //java-8
        if(typeCode!=null && typeCode.size()!=0) {
            where.append(" AND (");
            String query = typeCode.stream().map(it -> "type LIKE '%" + it +"%'").collect(Collectors.joining(" OR "));
            where.append(query);
            where.append(" ) ");
        }
    }

     @Override
     public List<BuildingEntity> findAll(BuildingSearchBuilder buildingSearchBuilder) {
         StringBuilder sql = new StringBuilder("SELECT DISTINCT b* FROM building AS b");
         queryJoinTable(buildingSearchBuilder, sql);
         StringBuilder where = new StringBuilder(" WHERE 1=1 ");
         querySimple(buildingSearchBuilder, where);
         querySpecial(buildingSearchBuilder, where);
         sql.append(" GROUP BY b.id");
         sql.append(where);
         Query query = entityManager.createNativeQuery(sql.toString(), BuildingEntity.class);
         return query.getResultList();
     }
}

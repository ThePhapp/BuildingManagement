package com.javaweb.repository.custom.impl;

import com.javaweb.entity.RentAreaEntity;
import com.javaweb.repository.custom.ListRentAreaRepositoryCustom;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
@PropertySource("classpath:application.properties")
public class ListRentAreaRepositoryImpl implements ListRentAreaRepositoryCustom {
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<RentAreaEntity> listRentArea(Long buildingId) {
        String sql = "SELECT * FROM rentarea ra WHERE ra.buildingid = " + buildingId + "";
        Query query = entityManager.createNativeQuery(sql, RentAreaEntity.class);
        return query.getResultList();
    }
}

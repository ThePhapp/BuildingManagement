package com.javaweb.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "building")
public class BuildingEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "ward")
    private String ward;

    @Column(name = "street")
    private String street;

//	@Column(name = "districtid")
//	private Long districtid;

    @Column(name = "managername")
    private String managerName;

    @Column(name = "managerphonenumber")
    private String managerPhoneNumber;

    @Column(name = "floorarea")
    private Long floorArea;

    @Column(name = "emptyarea")
    private String emptyArea;

    @Column(name = "rentprice")
    private Long rentPrice;

    @Column(name = "servicefee")
    private String servicefee;

    @Column(name = "brokeragefee")
    private Long brokerageFee;

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getWard() {
        return ward;
    }
    public void setWard(String ward) {
        this.ward = ward;
    }
    public String getStreet() {
        return street;
    }
    public void setStreet(String street) {
        this.street = street;
    }
    //	public Long getDistrictid() {
//		return districtid;
//	}
//	public void setDistrictid(Long districtid) {
//		this.districtid = districtid;
//	}
    public String getManagerName() {
        return managerName;
    }
    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }
    public String getManagerPhoneNumber() {
        return managerPhoneNumber;
    }
    public void setManagerPhoneNumber(String managerPhoneNumber) {
        this.managerPhoneNumber = managerPhoneNumber;
    }
    public Long getFloorArea() {
        return floorArea;
    }
    public void setFloorArea(Long floorArea) {
        this.floorArea = floorArea;
    }
    public String getEmptyArea() {
        return emptyArea;
    }
    public void setEmptyArea(String emptyArea) {
        this.emptyArea = emptyArea;
    }
    public Long getRentPrice() {
        return rentPrice;
    }
    public void setRentPrice(Long rentPrice) {
        this.rentPrice = rentPrice;
    }
    public String getServicefee() {
        return servicefee;
    }
    public void setServicefee(String servicefee) {
        this.servicefee = servicefee;
    }
    public Long getBrokerageFee() {
        return brokerageFee;
    }
    public void setBrokerageFee(Long brokerageFee) {
        this.brokerageFee = brokerageFee;
    }

}

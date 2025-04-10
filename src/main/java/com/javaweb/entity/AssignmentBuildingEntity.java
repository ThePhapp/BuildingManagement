package com.javaweb.entity;

import javax.persistence.*;

@Entity
@Table(name = "assignmentbuilding")
public class AssignmentBuildingEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "staffid")
    private UserEntity staffId;

    @ManyToOne
    @JoinColumn(name = "buildingid")

    private BuildingEntity buildingId;

    public UserEntity getStaffId() {
        return staffId;
    }

    public void setStaffId(UserEntity staffId) {
        this.staffId = staffId;
    }

    public BuildingEntity getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(BuildingEntity buildingId) {
        this.buildingId = buildingId;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
package com.hbrassapp.demo.Models;


import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Truck_Driver")
public class Truck_Driver {
    @Id
    @Column(name = "Driver_ID")
    private String Driver_ID;
    @Column(name = "License_Type")
    private String License_Type;
    @Column(name = "State_Code")
    private String State_Code;
    @Column(name = "active")
    private boolean active;

    public Truck_Driver(){}

    public Truck_Driver(String driver_ID, String license_Type, String state_Code) {
        Driver_ID = driver_ID;
        License_Type = license_Type;
        State_Code = state_Code;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getDriver_ID() {
        return Driver_ID;
    }

    public void setDriver_ID(String driver_ID) {
        Driver_ID = driver_ID;
    }

    public String getLicense_Type() {
        return License_Type;
    }

    public void setLicense_Type(String license_Type) {
        License_Type = license_Type;
    }

    public String getState_Code() {
        return State_Code;
    }

    public void setState_Code(String state_Code) {
        State_Code = state_Code;
    }
}

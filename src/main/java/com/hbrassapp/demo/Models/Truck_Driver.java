package com.hbrassapp.demo.Models;


import javax.persistence.*;

@Entity
@Table(name = "Truck_Driver")
public class Truck_Driver {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Truck_Driver_ID")
    private String Truck_Driver_ID;
    @Column(name = "Driver_ID")
    private String Driver_ID;
    @Column(name = "License_Type")
    private String License_Type;
    @Column(name = "State_Code")
    private String State_Code;

    public Truck_Driver(){}

    public Truck_Driver(String truck_Driver_ID, String driver_ID, String license_Type, String state_Code) {
        Truck_Driver_ID = truck_Driver_ID;
        Driver_ID = driver_ID;
        License_Type = license_Type;
        State_Code = state_Code;
    }

    public String getTruck_Driver_ID() {
        return Truck_Driver_ID;
    }

    public void setTruck_Driver_ID(String truck_Driver_ID) {
        Truck_Driver_ID = truck_Driver_ID;
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

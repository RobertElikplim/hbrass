package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Truck")
public class Truck {
    @Id
    @Column(name = "Truck_ID_VIN")
    private String Truck_ID_VIN;
    @Column(name = "Year")
    private String Year;
    @Column(name = "License_Plate")
    private String License_Plate;
    @Column(name = "Make")
    private String Make;
    @Column(name = "Model")
    private String Model;
    @Column(name = "Policy_Number")
    private String Policy_Number;
    @Column(name = "active")
    private boolean active;


    public Truck() {

    }

    public Truck( String truck_ID_VIN, String year, String license_Plate, String make, String model, String policy_Number) {

        Truck_ID_VIN = truck_ID_VIN;
        Year = year;
        License_Plate = license_Plate;
        Make = make;
        Model = model;
        Policy_Number = policy_Number;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }


    public String getTruck_ID_VIN() {
        return Truck_ID_VIN;
    }

    public void setTruck_ID_VIN(String truck_ID_VIN) {
        Truck_ID_VIN = truck_ID_VIN;
    }

    public String getYear() {
        return Year;
    }

    public void setYear(String year) {
        Year = year;
    }

    public String getLicense_Plate() {
        return License_Plate;
    }

    public void setLicense_Plate(String license_Plate) {
        License_Plate = license_Plate;
    }


    public String getMake() {
        return Make;
    }

    public void setMake(String make) {
        Make = make;
    }

    public String getModel() {
        return Model;
    }

    public void setModel(String model) {
        Model = model;
    }

    public String getPolicy_Number() {
        return Policy_Number;
    }

    public void setPolicy_Number(String policy_Number) {
        Policy_Number = policy_Number;
    }
}

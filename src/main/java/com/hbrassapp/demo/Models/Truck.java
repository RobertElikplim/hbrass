package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Truck")
public class Truck {
    @Id
    @Column(name = "Truck_ID_VIN")
    private String Truck_ID_VIN;
    @Column(name = "Year")
    private String Year;
    @Column(name = "License_Plate")
    private String License_Plate;
    @Column(name = "Vehicle_Tracker")
    private String Vehicle_Tracker;
    @Column(name = "Make")
    private String Make;
    @Column(name = "Model")
    private String Model;
    @Column(name = "Policy_Number")
    private String Policy_Number;

    public Truck(String truck_ID_VIN, String year, String license_Plate, String vehicle_Tracker, String make, String model, String policy_Number) {
        Truck_ID_VIN = truck_ID_VIN;
        Year = year;
        License_Plate = license_Plate;
        Vehicle_Tracker = vehicle_Tracker;
        Make = make;
        Model = model;
        Policy_Number = policy_Number;
    }

    public Truck() {

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

    public String getVehicle_Tracker() {
        return Vehicle_Tracker;
    }

    public void setVehicle_Tracker(String vehicle_Tracker) {
        Vehicle_Tracker = vehicle_Tracker;
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

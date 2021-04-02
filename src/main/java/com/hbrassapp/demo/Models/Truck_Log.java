package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Truck_Log {

    @Id
    @Column(name = "Log_ID")
    private String logID;
    @Column(name = "Truck_ID_VIN")
    private String truckIDVIN;
    @Column(name = "Driver_ID")
    private String driverID;
    @Column(name = "Us_Dot_ID")
    private String usDotID;
    @Column(name = "Fuel_Level")
    private String fuelLevel;

    public Truck_Log (){

    }

    public Truck_Log(String logID, String truckIDVIN, String driverID, String usDotID, String fuelLevel) {
        this.logID = logID;
        this.truckIDVIN = truckIDVIN;
        this.driverID = driverID;
        this.usDotID = usDotID;
        this.fuelLevel = fuelLevel;
    }

    public String getLogID() {
        return logID;
    }

    public void setLogID(String logID) {
        this.logID = logID;
    }

    public String getTruckIDVIN() {
        return truckIDVIN;
    }

    public void setTruckIDVIN(String truckIDVIN) {
        this.truckIDVIN = truckIDVIN;
    }

    public String getDriverID() {
        return driverID;
    }

    public void setDriverID(String driverID) {
        this.driverID = driverID;
    }

    public String getUsDotID() {
        return usDotID;
    }

    public void setUsDotID(String usDotID) {
        this.usDotID = usDotID;
    }

    public String getFuelLevel() {
        return fuelLevel;
    }

    public void setFuelLevel(String fuelLevel) {
        this.fuelLevel = fuelLevel;
    }
}

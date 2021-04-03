package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Maintenance {

    @Id
    @Column(name = "Maintenance_ID")
    private String maintenanceID;
    @Column (name = "Mileage")
    private String mileage;
    @Column (name = "Service_Date")
    private String serviceDate;
    @Column (name = "Type_Of_Service")
    private String service;
    @Column (name = "Service_Fee")
    private String serviceFee;
    @Column (name = "Truck_ID_VIN")
    private String truckIDVIN;

    public Maintenance() {

    }

    public Maintenance(String maintenanceID, String mileage, String serviceDate, String service, String serviceFee, String truckIDVIN) {
        this.maintenanceID = maintenanceID;
        this.mileage = mileage;
        this.serviceDate = serviceDate;
        this.service = service;
        this.serviceFee = serviceFee;
        this.truckIDVIN = truckIDVIN;
    }

    public String getMaintenanceID() {
        return maintenanceID;
    }

    public void setMaintenanceID(String maintenanceID) {
        this.maintenanceID = maintenanceID;
    }

    public String getMileage() {
        return mileage;
    }

    public void setMileage(String mileage) {
        this.mileage = mileage;
    }

    public String getServiceDate() {
        return serviceDate;
    }

    public void setServiceDate(String serviceDate) {
        this.serviceDate = serviceDate;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getServiceFee() {
        return serviceFee;
    }

    public void setServiceFee(String serviceFee) {
        this.serviceFee = serviceFee;
    }

    public String getTruckIDVIN() {
        return truckIDVIN;
    }

    public void setTruckIDVIN(String truckIDVIN) {
        this.truckIDVIN = truckIDVIN;
    }
}

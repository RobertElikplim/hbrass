package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class IFTA_Sticker {
    @Id
    @Column(name = "IFTA_ID")
    private String IFTA_ID;
    @Column(name = "Truck_ID_VIN")
    private String Truck_ID_VIN;
    @Column(name = "IFTA_Status")
    private String IFTA_Status;
    @Column(name = "IFTA_Expiration_Date")
    private String IFTA_Expiration_Date;

    public IFTA_Sticker(){}

    public IFTA_Sticker(String IFTA_ID, String truck_ID_VIN, String IFTA_Status, String IFTA_Expiration_Date) {
        this.IFTA_ID = IFTA_ID;
        Truck_ID_VIN = truck_ID_VIN;
        this.IFTA_Status = IFTA_Status;
        this.IFTA_Expiration_Date = IFTA_Expiration_Date;
    }

    public String getIFTA_ID() {
        return IFTA_ID;
    }

    public void setIFTA_ID(String IFTA_ID) {
        this.IFTA_ID = IFTA_ID;
    }

    public String getTruck_ID_VIN() {
        return Truck_ID_VIN;
    }

    public void setTruck_ID_VIN(String truck_ID_VIN) {
        Truck_ID_VIN = truck_ID_VIN;
    }

    public String getIFTA_Status() {
        return IFTA_Status;
    }

    public void setIFTA_Status(String IFTA_Status) {
        this.IFTA_Status = IFTA_Status;
    }

    public String getIFTA_Expiration_Date() {
        return IFTA_Expiration_Date;
    }

    public void setIFTA_Expiration_Date(String IFTA_Expiration_Date) {
        this.IFTA_Expiration_Date = IFTA_Expiration_Date;
    }
}

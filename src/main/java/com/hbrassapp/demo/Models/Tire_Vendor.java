package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Tire_Vendor")
public class Tire_Vendor {
    @Id
    @Column(name = "Tire_Vendor_ID")
    private String Tire_Vendor_ID;
    @Column(name = "Vendor_ID")
    private String Vendor_ID;
    @Column(name = "active")
    private boolean active;

    public Tire_Vendor(String tire_Vendor_ID, String vendor_ID) {
        Tire_Vendor_ID = tire_Vendor_ID;
        Vendor_ID = vendor_ID;
    }

    public Tire_Vendor() {

    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getTire_Vendor_ID() {
        return Tire_Vendor_ID;
    }

    public void setTire_Vendor_ID(String tire_Vendor_ID) {
        Tire_Vendor_ID = tire_Vendor_ID;
    }

    public String getVendor_ID() {
        return Vendor_ID;
    }

    public void setVendor_ID(String vendor_ID) {
        Vendor_ID = vendor_ID;
    }
}

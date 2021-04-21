package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Tire")
public class Tire {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Tire_ID")
    private String Tire_ID;
    @Column(name = "Tire_Name")
    private String Tire_Name;
    @Column(name = "Vendor_ID")
    private String Vendor_ID;
    @Column(name = "active")
    private boolean active;

    public Tire(String tire_ID, String tire_Name, String Vendor_ID) {
        Tire_ID = tire_ID;
        Tire_Name = tire_Name;
        this.Vendor_ID = Vendor_ID;
    }

    public Tire() {

    }

    public String getVendor_ID() {
        return Vendor_ID;
    }

    public void setVendor_ID(String vendor_ID) {
        Vendor_ID = vendor_ID;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getTire_ID() {
        return Tire_ID;
    }

    public void setTire_ID(String tire_ID) {
        Tire_ID = tire_ID;
    }

    public String getTire_Name() {
        return Tire_Name;
    }

    public void setTire_Name(String tire_Name) {
        Tire_Name = tire_Name;
    }
}

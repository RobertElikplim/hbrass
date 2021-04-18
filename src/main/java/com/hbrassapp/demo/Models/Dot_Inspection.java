package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Dot_Inspection")
public class Dot_Inspection {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Dot_Inspection_ID")
    private String Dot_Inspection_ID;
    @Column(name = "Truck_ID_VIN")
    private String Truck_ID_VIN;
    @Column(name = "Dot_Certification_Date")
    private String Dot_Certification_Date;
    @Column(name = "Dot_Expiration_Date")
    private String Dot_Expiration_Date;
    @Column(name = "active")
    private boolean active;

    public Dot_Inspection(){

    }

    public Dot_Inspection(String dot_Inspection_ID, String truck_ID_VIN, String dot_Certification_Date, String dot_Expiration_Date) {
        Dot_Inspection_ID = dot_Inspection_ID;
        Truck_ID_VIN = truck_ID_VIN;
        Dot_Certification_Date = dot_Certification_Date;
        Dot_Expiration_Date = dot_Expiration_Date;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getDot_Inspection_ID() {
        return Dot_Inspection_ID;
    }

    public void setDot_Inspection_ID(String dot_Inspection_ID) {
        Dot_Inspection_ID = dot_Inspection_ID;
    }

    public String getTruck_ID_VIN() {
        return Truck_ID_VIN;
    }

    public void setTruck_ID_VIN(String truck_ID_VIN) {
        Truck_ID_VIN = truck_ID_VIN;
    }

    public String getDot_Certification_Date() {
        return Dot_Certification_Date;
    }

    public void setDot_Certification_Date(String dot_Certification_Date) {
        Dot_Certification_Date = dot_Certification_Date;
    }

    public String getDot_Expiration_Date() {
        return Dot_Expiration_Date;
    }

    public void setDot_Expiration_Date(String dot_Expiration_Date) {
        Dot_Expiration_Date = dot_Expiration_Date;
    }
}

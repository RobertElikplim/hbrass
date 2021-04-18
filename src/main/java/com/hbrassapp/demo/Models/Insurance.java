package com.hbrassapp.demo.Models;


import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Insurance")
public class Insurance {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Insure_ID")
    private String Insure_ID;
    @Column(name = "Insurance_ID")
    private String Insurance_ID;
    @Column(name = "Insurance_Type")
    private String Insurance_Type;
    @Column(name = "Coverage_Expiration")
    private String Coverage_Expiration;
    @Column(name = "active")
    private boolean active;

    public Insurance() {
    }

    public Insurance(String insurance_ID, String insurance_Type, String coverage_Expiration, String insure_ID) {
        Insurance_ID = insurance_ID;
        Insurance_Type = insurance_Type;
        Coverage_Expiration = coverage_Expiration;
        Insure_ID = insure_ID;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getInsurance_ID() {
        return Insurance_ID;
    }

    public void setInsurance_ID(String insurance_ID) {
        Insurance_ID = insurance_ID;
    }

    public String getInsurance_Type() {
        return Insurance_Type;
    }

    public void setInsurance_Type(String insurance_Type) {
        Insurance_Type = insurance_Type;
    }

    public String getCoverage_Expiration() {
        return Coverage_Expiration;
    }

    public void setCoverage_Expiration(String coverage_Expiration) {
        Coverage_Expiration = coverage_Expiration;
    }

    public String getInsure_ID() {
        return Insure_ID;
    }

    public void setInsure_ID(String insure_ID) {
        Insure_ID = insure_ID;
    }
}

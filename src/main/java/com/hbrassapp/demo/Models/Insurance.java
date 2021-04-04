package com.hbrassapp.demo.Models;


import javax.persistence.*;

@Entity
@Table(name = "Insurance")
public class Insurance {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Insurance_ID")
    private String Insurance_ID;
    @Column(name = "Insurance_Type")
    private String Insurance_Type;
    @Column(name = "Coverage_Expiration")
    private String Coverage_Expiration;

    public Insurance(){}

    public Insurance(String insurance_ID, String insurance_Type, String coverage_Expiration) {
        Insurance_ID = insurance_ID;
        Insurance_Type = insurance_Type;
        Coverage_Expiration = coverage_Expiration;
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
}

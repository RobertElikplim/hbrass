package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Country")
public class Country {
    @Id
    @Column(name = "Country_Code")
    private String Country_Code;
    @Column(name = "Country_Name")
    private String Country_Name;
    @Column(name = "active")
    private boolean active;

    public Country(){}


    public Country(String country_Code, String country_Name) {
        Country_Code = country_Code;
        Country_Name = country_Name;

    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getCountry_Code() {
        return Country_Code;
    }

    public void setCountry_Code(String country_Code) {
        Country_Code = country_Code;
    }

    public String getCountry_Name() {
        return Country_Name;
    }

    public void setCountry_Name(String country_Name) {
        Country_Name = country_Name;
    }

}

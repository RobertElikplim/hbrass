package com.hbrassapp.demo.Models;

import javax.persistence.*;

@Entity
@Table(name = "Country")
public class Country {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Column_ID")
    private String Column_ID;
    @Column(name = "Country_Code")
    private String Country_Code;
    @Column(name = "Country_Name")
    private String Country_Name;

    public Country(){}

    public Country(String column_ID) {
        Column_ID = column_ID;
    }

    public Country(String country_Code, String country_Name) {
        Country_Code = country_Code;
        Country_Name = country_Name;

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

    public String getColumn_ID() {
        return Column_ID;
    }

    public void setColumn_ID(String column_ID) {
        Column_ID = column_ID;
    }
}

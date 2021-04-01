package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Drop_Off_Location")
public class Drop_Off_Location {
    @Id
    @Column(name = "Drop_Off_ID")
    private String Drop_Off_ID;
    @Column(name = "Drop_Off_Tracker_Code")
    private String Drop_Off_Tracker_Code;
    @Column(name = "Drop_Off_Date")
    private String Drop_Off_Date;
    @Column(name = "Street_Address")
    private String Street_Address;
    @Column(name = "City")
    private String City;
    @Column(name = "State_Code")
    private String State_Code;
    @Column(name = "Zip_Code")
    private String Zip_Code;

    public Drop_Off_Location() {

    }

    public Drop_Off_Location(String drop_Off_ID, String drop_Off_Tracker_Code, String drop_Off_Date, String street_Address, String city, String state_Code, String zip_Code) {
        Drop_Off_ID = drop_Off_ID;
        Drop_Off_Tracker_Code = drop_Off_Tracker_Code;
        Drop_Off_Date = drop_Off_Date;
        Street_Address = street_Address;
        City = city;
        State_Code = state_Code;
        Zip_Code = zip_Code;
    }

    public String getDrop_Off_ID() {
        return Drop_Off_ID;
    }

    public void setDrop_Off_ID(String drop_Off_ID) {
        Drop_Off_ID = drop_Off_ID;
    }

    public String getDrop_Off_Tracker_Code() {
        return Drop_Off_Tracker_Code;
    }

    public void setDrop_Off_Tracker_Code(String drop_Off_Tracker_Code) {
        Drop_Off_Tracker_Code = drop_Off_Tracker_Code;
    }

    public String getDrop_Off_Date() {
        return Drop_Off_Date;
    }

    public void setDrop_Off_Date(String drop_Off_Date) {
        Drop_Off_Date = drop_Off_Date;
    }

    public String getStreet_Address() {
        return Street_Address;
    }

    public void setStreet_Address(String street_Address) {
        Street_Address = street_Address;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String city) {
        City = city;
    }

    public String getState_Code() {
        return State_Code;
    }

    public void setState_Code(String state_Code) {
        State_Code = state_Code;
    }

    public String getZip_Code() {
        return Zip_Code;
    }

    public void setZip_Code(String zip_Code) {
        Zip_Code = zip_Code;
    }
}

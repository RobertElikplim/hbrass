package com.hbrassapp.demo.Models;

import javax.persistence.*;

@Entity
@Table
public class Pick_Up_location {

    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Pick_Up_ID")
    private String pickUpID;
    @Column(name = "Pick_Up_Tracker_Code")
    private String puTrackerCode;
    @Column(name = "Pick_Up_Date")
    private String puDate;
    @Column(name = "Street_Address")
    private String streetAddress;
    @Column(name = "City")
    private String city;
    @Column(name = "State_Code")
    private String stateCode;
    @Column(name = "Zip_Code")
    private String zipCode;

    public Pick_Up_location (){

    }

    public Pick_Up_location(String pickUpID, String puTrackerCode, String puDate, String streetAddress, String city, String stateCode, String zipCode) {
        this.pickUpID = pickUpID;
        this.puTrackerCode = puTrackerCode;
        this.puDate = puDate;
        this.streetAddress = streetAddress;
        this.city = city;
        this.stateCode = stateCode;
        this.zipCode = zipCode;
    }

    public String getPickUpID() {
        return pickUpID;
    }

    public void setPickUpID(String pickUpID) {
        this.pickUpID = pickUpID;
    }

    public String getPuTrackerCode() {
        return puTrackerCode;
    }

    public void setPuTrackerCode(String puTrackerCode) {
        this.puTrackerCode = puTrackerCode;
    }

    public String getPuDate() {
        return puDate;
    }

    public void setPuDate(String puDate) {
        this.puDate = puDate;
    }

    public String getStreetAddress() {
        return streetAddress;
    }

    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStateCode() {
        return stateCode;
    }

    public void setStateCode(String stateCode) {
        this.stateCode = stateCode;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }
}

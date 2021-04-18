package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Vendor")
public class Vendor {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Vendor_ID")
    private String Vendor_ID;
    @Column(name = "Vendor_Name")
    private String Vendor_Name;
    @Column(name = "Phone_Number")
    private String Phone_Number;
    @Column(name = "Street_Address")
    private String Street_Address;
    @Column(name = "City")
    private String City;
    @Column(name = "State_Code")
    private String State_Code;
    @Column(name = "Zip_Code")
    private String Zip_Code;
    @Column(name = "Email")
    private String Email;
    @Column(name = "Vendor_Tracker")
    private String Vendor_Tracker;
    @Column(name = "active")
    private boolean active;

    public Vendor(){}

    public Vendor(String vendor_ID, String vendor_Name, String phone_Number, String street_Address, String city, String state_Code, String zip_Code, String email, String vendor_Tracker) {
        Vendor_ID = vendor_ID;
        Vendor_Name = vendor_Name;
        Phone_Number = phone_Number;
        Street_Address = street_Address;
        City = city;
        State_Code = state_Code;
        Zip_Code = zip_Code;
        Email = email;
        Vendor_Tracker = vendor_Tracker;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getVendor_ID() {
        return Vendor_ID;
    }

    public void setVendor_ID(String vendor_ID) {
        Vendor_ID = vendor_ID;
    }

    public String getVendor_Name() {
        return Vendor_Name;
    }

    public void setVendor_Name(String vendor_Name) {
        Vendor_Name = vendor_Name;
    }

    public String getPhone_Number() {
        return Phone_Number;
    }

    public void setPhone_Number(String phone_Number) {
        Phone_Number = phone_Number;
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

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getVendor_Tracker() {
        return Vendor_Tracker;
    }

    public void setVendor_Tracker(String vendor_Tracker) {
        Vendor_Tracker = vendor_Tracker;
    }
}



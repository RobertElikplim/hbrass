package com.hbrassapp.demo.Models;

import javax.persistence.*;

@Entity
@Table(name = "Broker_Company")
public class Broker_Company {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Broker_ID")
    private String Broker_ID;
    @Column(name = "Broker_Name")
    private String Broker_Name;
    @Column(name = "Street_Address")
    private String Street_Address;
    @Column(name = "State_Code")
    private String State_Code;
    @Column(name = "Zip_Code")
    private String Zip_Code;
    @Column(name = "Phone_Number")
    private String Phone_Number;
    @Column(name = "Email_Address")
    private String Email_Address;

    public Broker_Company(){

    }

    public Broker_Company(String broker_ID, String broker_Name, String street_Address, String state_Code, String zip_Code, String phone_Number, String email_Address) {
        Broker_ID = broker_ID;
        Broker_Name = broker_Name;
        Street_Address = street_Address;
        State_Code = state_Code;
        Zip_Code = zip_Code;
        Phone_Number = phone_Number;
        Email_Address = email_Address;
    }

    public String getBroker_ID() {
        return Broker_ID;
    }

    public void setBroker_ID(String broker_ID) {
        Broker_ID = broker_ID;
    }

    public String getBroker_Name() {
        return Broker_Name;
    }

    public void setBroker_Name(String broker_Name) {
        Broker_Name = broker_Name;
    }

    public String getStreet_Address() {
        return Street_Address;
    }

    public void setStreet_Address(String street_Address) {
        Street_Address = street_Address;
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

    public String getPhone_Number() {
        return Phone_Number;
    }

    public void setPhone_Number(String phone_Number) {
        Phone_Number = phone_Number;
    }

    public String getEmail_Address() {
        return Email_Address;
    }

    public void setEmail_Address(String email_Address) {
        Email_Address = email_Address;
    }
}

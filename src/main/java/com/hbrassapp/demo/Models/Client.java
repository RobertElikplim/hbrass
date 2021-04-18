package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Client")
public class Client {
    @Id
    @Column(name = "Client_ID")
    private String Client_ID;
    @Column(name = "Client_Name")
    private String Client_Name;
    @Column(name = "Street_Address")
    private String Street_Address;
    @Column(name = "City")
    private String City;
    @Column(name = "State_Code")
    private String State_Code;
    @Column(name = "Zip_Code")
    private String Zip_Code;
    @Column(name = "Phone_Number")
    private String Phone_Number;
    @Column(name = "Email")
    private String Email;
    @Column(name = "active")
    private boolean active;

    public Client(String client_ID, String client_Name, String street_Address, String city, String state_Code, String zip_Code, String phone_Number, String email) {
        Client_ID = client_ID;
        Client_Name = client_Name;
        Street_Address = street_Address;
        City = city;
        State_Code = state_Code;
        Zip_Code = zip_Code;
        Phone_Number = phone_Number;
        Email = email;
    }

    public Client() {

    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getClient_ID() { return Client_ID; }

    public void setClient_ID(String client_ID) {
        Client_ID = client_ID;
    }

    public String getClient_Name() {
        return Client_Name;
    }

    public void setClient_Name(String client_Name) {
        Client_Name = client_Name;
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

    public String getPhone_Number() {
        return Phone_Number;
    }

    public void setPhone_Number(String phone_Number) {
        Phone_Number = phone_Number;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }
}

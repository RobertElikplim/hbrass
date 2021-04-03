package com.hbrassapp.demo.Models;

import javax.persistence.*;
import java.util.UUID;

@Entity
@Table
public class Broker_Info {

    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Contact_ID")
    private String contact_ID;
    @Column(name ="First_Name")
    private String FirstName;
    @Column(name ="Last_Name")
    private String LastName;
    @Column(name ="Email")
    private String email;
    @Column(name ="Phone_Number")
    private String phoneNumber;
    @Column(name ="Broker_ID")
    private String brokerID;

    public Broker_Info() {

    }

    public Broker_Info(String contact_ID, String firstName, String lastName, String email, String phoneNumber, String brokerID) {
        this.contact_ID = contact_ID;
        FirstName = firstName;
        LastName = lastName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.brokerID = brokerID;
    }

    public String getContact_ID() {
        return contact_ID;
    }

    public void setContact_ID(String contact_ID) {
        this.contact_ID = contact_ID;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String lastName) {
        LastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getBrokerID() {
        return brokerID;
    }

    public void setBrokerID(String brokerID) {
        this.brokerID = brokerID;
    }
}

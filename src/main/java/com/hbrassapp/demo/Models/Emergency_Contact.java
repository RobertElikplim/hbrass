package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Emergency_Contact")
public class Emergency_Contact {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Emergency_Contact_ID")
    private String Emergency_Contact_ID;
    @Column(name = "First_Name")
    private String First_Name;
    @Column(name = "Last_Name")
    private String Last_Name;
    @Column(name = "Relationship")
    private String Relationship;
    @Column(name = "Phone_Number")
    private String Phone_Number;
    @Column(name = "Street_Address")
    private String Street_Address;
    @Column(name = "active")
    private boolean active;

    public Emergency_Contact(String emergency_Contact_ID, String first_Name, String last_Name, String relationship, String phone_Number, String street_Address) {
        Emergency_Contact_ID = emergency_Contact_ID;
        First_Name = first_Name;
        Last_Name = last_Name;
        Relationship = relationship;
        Phone_Number = phone_Number;
        Street_Address = street_Address;
    }

    public Emergency_Contact() {

    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getEmergency_Contact_ID() {
        return Emergency_Contact_ID;
    }

    public void setEmergency_Contact_ID(String emergency_Contact_ID) {
        Emergency_Contact_ID = emergency_Contact_ID;
    }

    public String getFirst_Name() {
        return First_Name;
    }

    public void setFirst_Name(String first_Name) {
        First_Name = first_Name;
    }

    public String getLast_Name() {
        return Last_Name;
    }

    public void setLast_Name(String last_Name) {
        Last_Name = last_Name;
    }

    public String getRelationship() {
        return Relationship;
    }

    public void setRelationship(String relationship) {
        Relationship = relationship;
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
}

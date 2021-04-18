package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "employee")
public class employee {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Employee_ID")
    private String Employee_ID;
    @Column(name = "First_Name")
    private String First_Name;
    @Column(name = "Last_Name")
    private String Last_Name;
    @Column(name = "Phone_Number")
    private String Phone_Number;
    @Column(name = "Email")
    private String Email;
    @Column(name = "Street_Address")
    private String Street_Address;
    @Column(name = "City")
    private String City;
    @Column(name = "State_Code")
    private String State_Code;
    @Column(name = "Zip")
    private String Zip_Code;
    @Column(name = "Position_ID")
    private String Position_ID;
    @Column(name = "Driver_ID")
    private String Driver_ID;
    @Column(name = "Emergency_Contact_ID")
    private String Emergency_Contact_ID;
    @Column(name = "active")
    private boolean active;

    public employee(String employee_ID, String first_Name, String last_Name, String phone_Number, String email, String street_Address, String city, String state_Code, String zip_Code, String position_ID, String driver_ID, String emergency_Contact_ID) {
        Employee_ID = employee_ID;
        First_Name = first_Name;
        Last_Name = last_Name;
        Phone_Number = phone_Number;
        Email = email;
        Street_Address = street_Address;
        City = city;
        State_Code = state_Code;
        Zip_Code = zip_Code;
        Position_ID = position_ID;
        Driver_ID = driver_ID;
        Emergency_Contact_ID = emergency_Contact_ID;
    }

    public employee() {

    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getEmployee_ID() {
        return Employee_ID;
    }

    public void setEmployee_ID(String employee_ID) {
        Employee_ID = employee_ID;
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

    public String getPosition_ID() {
        return Position_ID;
    }

    public void setPosition_ID(String position_ID) {
        Position_ID = position_ID;
    }

    public String getDriver_ID() {
        return Driver_ID;
    }

    public void setDriver_ID(String driver_ID) {
        Driver_ID = driver_ID;
    }

    public String getEmergency_Contact_ID() {
        return Emergency_Contact_ID;
    }

    public void setEmergency_Contact_ID(String emergency_Contact_ID) {
        Emergency_Contact_ID = emergency_Contact_ID;
    }
}

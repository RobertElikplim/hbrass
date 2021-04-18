package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Broker_Contract")
public class Broker_Contract {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Broker_Contract_ID")
    private String Broker_Contract_ID;
    @Column(name = "Invoice_ID")
    private String Invoice_ID;
    @Column(name = "Broker_ID")
    private String Broker_ID;
    @Column(name = "Rate")
    private double Rate;
    @Column(name = "Fare")
    private double Fare;
    @Column(name = "Commission")
    private double Commission;
    @Column(name = "Contract_Status")
    private String Contract_Status;
    @Column(name = "active")
    private boolean active;

    public Broker_Contract(String broker_Contract_ID, String invoice_ID, String broker_ID, double rate, double fare, double comission, String contract_Status, String contract_Form) {
        Broker_Contract_ID = broker_Contract_ID;
        Invoice_ID = invoice_ID;
        Broker_ID = broker_ID;
        Rate = rate;
        Fare = fare;
        Commission = comission;
        Contract_Status = contract_Status;
    }

    public Broker_Contract() {

    }

    public String getBroker_Contract_ID() {
        return Broker_Contract_ID;
    }

    public void setBroker_Contract_ID(String broker_Contract_ID) {
        Broker_Contract_ID = broker_Contract_ID;
    }

    public String getInvoice_ID() {
        return Invoice_ID;
    }

    public void setInvoice_ID(String invoice_ID) {
        Invoice_ID = invoice_ID;
    }

    public String getBroker_ID() {
        return Broker_ID;
    }

    public void setBroker_ID(String broker_ID) {
        Broker_ID = broker_ID;
    }

    public double getRate() {
        return Rate;
    }

    public void setRate(double rate) {
        Rate = rate;
    }

    public double getFare() {
        return Fare;
    }

    public void setFare(double fare) {
        Fare = fare;
    }

    public double getCommission() {
        return Commission;
    }

    public void setCommission(double commission) {
        Commission = commission;
    }

    public String getContract_Status() {
        return Contract_Status;
    }

    public void setContract_Status(String contract_Status) {
        Contract_Status = contract_Status;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}

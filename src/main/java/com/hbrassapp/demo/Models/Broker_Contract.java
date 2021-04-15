package com.hbrassapp.demo.Models;

import javax.persistence.*;

@Entity
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
    private String Rate;
    @Column(name = "Fare")
    private String Fare;
    @Column(name = "Commission")
    private String Commission;
    @Column(name = "Contract_Status")
    private String Contract_Status;

    public Broker_Contract(String broker_Contract_ID, String invoice_ID, String broker_ID, String rate, String fare, String comission, String contract_Status, String contract_Form) {
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

    public String getRate() {
        return Rate;
    }

    public void setRate(String rate) {
        Rate = rate;
    }

    public String getFare() {
        return Fare;
    }

    public void setFare(String fare) {
        Fare = fare;
    }

    public String getCommission() {
        return Commission;
    }

    public void setCommission(String commission) {
        Commission = commission;
    }

    public String getContract_Status() {
        return Contract_Status;
    }

    public void setContract_Status(String contract_Status) {
        Contract_Status = contract_Status;
    }

}

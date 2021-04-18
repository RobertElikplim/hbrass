package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table
public class Invoice {

    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Invoice_ID")
    private String invoiceID;
    @Column(name = "Client_ID")
    private String clientID;
    @Column(name = "Broker_Contract_ID")
    private String brokerContractID;
    @Column(name = "Invoice_Date")
    private String invoiceDate;
    @Column(name = "Invoice_Status_ID")
    private String InvoiceStatusID;
    @Column(name = "active")
    private boolean active;

    public Invoice (){

    }

    public Invoice(String invoiceID, String clientID, String brokerContractID, String invoiceDate, String invoiceStatusID) {
        this.invoiceID = invoiceID;
        this.clientID = clientID;
        this.brokerContractID = brokerContractID;
        this.invoiceDate = invoiceDate;
        InvoiceStatusID = invoiceStatusID;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getInvoiceID() {
        return invoiceID;
    }

    public void setInvoiceID(String invoiceID) {
        this.invoiceID = invoiceID;
    }

    public String getClientID() {
        return clientID;
    }

    public void setClientID(String clientID) {
        this.clientID = clientID;
    }

    public String getBrokerContractID() {
        return brokerContractID;
    }

    public void setBrokerContractID(String brokerContractID) {
        this.brokerContractID = brokerContractID;
    }

    public String getInvoiceDate() {
        return invoiceDate;
    }

    public void setInvoiceDate(String invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public String getInvoiceStatusID() {
        return InvoiceStatusID;
    }

    public void setInvoiceStatusID(String invoiceStatusID) {
        InvoiceStatusID = invoiceStatusID;
    }
}

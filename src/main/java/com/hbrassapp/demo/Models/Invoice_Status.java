package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Invoice_Status")
public class Invoice_Status {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Invoice_Status_ID")
    private String Invoice_Status_ID;
    @Column(name = "Invoice_Status")
    private String Invoice_Status;
    @Column(name = "active")
    private boolean active;

    public Invoice_Status(String invoice_ID, String invoice_Status) {
        Invoice_Status_ID = invoice_ID;
        Invoice_Status = invoice_Status;
    }

    public String getInvoice_Status_ID() {
        return Invoice_Status_ID;
    }

    public void setInvoice_Status_ID(String invoice_Status_ID) {
        Invoice_Status_ID = invoice_Status_ID;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Invoice_Status() {}

    public String getInvoice_ID() {
        return Invoice_Status_ID;
    }

    public void setInvoice_ID(String invoice_ID) {
        Invoice_Status_ID = invoice_ID;
    }

    public String getInvoice_Status() {
        return Invoice_Status;
    }

    public void setInvoice_Status(String invoice_Status) {
        Invoice_Status = invoice_Status;
    }
}

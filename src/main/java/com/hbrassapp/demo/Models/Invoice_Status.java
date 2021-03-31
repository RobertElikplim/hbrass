package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Invoice_Status")
public class Invoice_Status {
    @Id
    @Column(name = "Invoice_Status_ID")
    private String Invoice_Status_ID;
    @Column(name = "Invoice_Status")
    private String Invoice_Status;

    public Invoice_Status(String invoice_ID, String invoice_Status) {
        Invoice_Status_ID = invoice_ID;
        Invoice_Status = invoice_Status;
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

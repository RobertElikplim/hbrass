package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Miscellaneous")
public class Miscellaneous {
    @Id
    @Column(name = "Miscellaneous_ID")
    private String Miscellaneous_ID;
    @Column(name = "Cost")
    private String Cost;
    @Column(name = "Description")
    private String Description;

    public Miscellaneous(){

    }

    public Miscellaneous(String miscellaneous_ID, String cost, String description) {
        Miscellaneous_ID = miscellaneous_ID;
        Cost = cost;
        Description = description;
    }

    public String getMiscellaneous_ID() {
        return Miscellaneous_ID;
    }

    public void setMiscellaneous_ID(String miscellaneous_ID) {
        Miscellaneous_ID = miscellaneous_ID;
    }

    public String getCost() {
        return Cost;
    }

    public void setCost(String cost) {
        Cost = cost;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }
}

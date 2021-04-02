package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Tire")
public class Tire {
    @Id
    @Column(name = "Tire_ID")
    private String Tire_ID;
    @Column(name = "Tire_Name")
    private String Tire_Name;

    public Tire(String tire_ID, String tire_Name) {
        Tire_ID = tire_ID;
        Tire_Name = tire_Name;
    }

    public Tire() {

    }

    public String getTire_ID() {
        return Tire_ID;
    }

    public void setTire_ID(String tire_ID) {
        Tire_ID = tire_ID;
    }

    public String getTire_Name() {
        return Tire_Name;
    }

    public void setTire_Name(String tire_Name) {
        Tire_Name = tire_Name;
    }
}

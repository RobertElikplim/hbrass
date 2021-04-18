package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Loads")
public class Loads {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Load_ID")
    private String Load_ID;
    @Column(name = "Date")
    private String Date;
    @Column(name = "Pick_Up_ID")
    private String Pick_Up_ID;
    @Column(name = "Drop_Off_ID")
    private String Drop_Off_ID;
    @Column(name = "Truck_ID_VIN")
    private String Truck_ID_VIN;
    @Column(name = "Trailer_ID")
    private String Trailer_ID;
    @Column(name = "Driver_ID")
    private String Driver_ID;
    @Column(name = "Dead_Head")
    private String Dead_Head;
    @Column(name = "Loaded_Miles")
    private String Loaded_Miles;
    @Column(name = "Total_Miles")
    private String Total_Miles;
    @Column(name = "Driver_Pay")
    private String Driver_Pay;
    @Column(name = "Remarks")
    private String Remarks;
    @Column(name = "active")
    private boolean active;

    public Loads(){}

    public Loads(String load_ID, String date, String pick_Up_ID, String drop_Off_ID, String truck_ID_VIN, String trailer_ID, String driver_ID, String dead_Head, String loaded_Miles, String total_Miles, String driver_Pay, String remarks) {
        Load_ID = load_ID;
        Date = date;
        Pick_Up_ID = pick_Up_ID;
        Drop_Off_ID = drop_Off_ID;
        Truck_ID_VIN = truck_ID_VIN;
        Trailer_ID = trailer_ID;
        Driver_ID = driver_ID;
        Dead_Head = dead_Head;
        Loaded_Miles = loaded_Miles;
        Total_Miles = total_Miles;
        Driver_Pay = driver_Pay;
        Remarks = remarks;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getLoad_ID() {
        return Load_ID;
    }

    public void setLoad_ID(String load_ID) {
        Load_ID = load_ID;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        Date = date;
    }

    public String getPick_Up_ID() {
        return Pick_Up_ID;
    }

    public void setPick_Up_ID(String pick_Up_ID) {
        Pick_Up_ID = pick_Up_ID;
    }

    public String getDrop_Off_ID() {
        return Drop_Off_ID;
    }

    public void setDrop_Off_ID(String drop_Off_ID) {
        Drop_Off_ID = drop_Off_ID;
    }

    public String getTruck_ID_VIN() {
        return Truck_ID_VIN;
    }

    public void setTruck_ID_VIN(String truck_ID_VIN) {
        Truck_ID_VIN = truck_ID_VIN;
    }

    public String getTrailer_ID() {
        return Trailer_ID;
    }

    public void setTrailer_ID(String trailer_ID) {
        Trailer_ID = trailer_ID;
    }

    public String getDriver_ID() {
        return Driver_ID;
    }

    public void setDriver_ID(String driver_ID) {
        Driver_ID = driver_ID;
    }

    public String getDead_Head() {
        return Dead_Head;
    }

    public void setDead_Head(String dead_Head) {
        Dead_Head = dead_Head;
    }

    public String getLoaded_Miles() {
        return Loaded_Miles;
    }

    public void setLoaded_Miles(String loaded_Miles) {
        Loaded_Miles = loaded_Miles;
    }

    public String getTotal_Miles() {
        return Total_Miles;
    }

    public void setTotal_Miles(String total_Miles) {
        Total_Miles = total_Miles;
    }

    public String getDriver_Pay() {
        return Driver_Pay;
    }

    public void setDriver_Pay(String driver_Pay) {
        Driver_Pay = driver_Pay;
    }

    public String getRemarks() {
        return Remarks;
    }

    public void setRemarks(String remarks) {
        Remarks = remarks;
    }
}

package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Trip_Expense")
public class Trip_Expense {
    @Id
    @Column(name = "Trip_Expense_ID")
    private String Trip_Expense_ID;
    @Column(name = "Fuel_Cost")
    private String Fuel_Cost;
    @Column(name = "Scale_Expense")
    private String Scale_Expense;
    @Column(name = "Other_Expense")
    private String Other_Expense;
    @Column(name = "Repair_Expense")
    private String Repair_Expense;
    @Column(name = "Total_Expense")
    private String Total_Expense;
    @Column(name = "Load_ID")
    private String Load_ID;

    public Trip_Expense(String trip_Expense_ID, String fuel_Cost, String scale_Expense, String other_Expense, String repair_Expense, String total_Expense, String load_ID) {
        Trip_Expense_ID = trip_Expense_ID;
        Fuel_Cost = fuel_Cost;
        Scale_Expense = scale_Expense;
        Other_Expense = other_Expense;
        Repair_Expense = repair_Expense;
        Total_Expense = total_Expense;
        Load_ID = load_ID;
    }

    public Trip_Expense() {

    }

    public String getTrip_Expense_ID() {
        return Trip_Expense_ID;
    }

    public void setTrip_Expense_ID(String trip_Expense_ID) {
        Trip_Expense_ID = trip_Expense_ID;
    }

    public String getFuel_Cost() {
        return Fuel_Cost;
    }

    public void setFuel_Cost(String fuel_Cost) {
        Fuel_Cost = fuel_Cost;
    }

    public String getScale_Expense() {
        return Scale_Expense;
    }

    public void setScale_Expense(String scale_Expense) {
        Scale_Expense = scale_Expense;
    }

    public String getOther_Expense() {
        return Other_Expense;
    }

    public void setOther_Expense(String other_Expense) {
        Other_Expense = other_Expense;
    }

    public String getRepair_Expense() {
        return Repair_Expense;
    }

    public void setRepair_Expense(String repair_Expense) {
        Repair_Expense = repair_Expense;
    }

    public String getTotal_Expense() {
        return Total_Expense;
    }

    public void setTotal_Expense(String total_Expense) {
        Total_Expense = total_Expense;
    }

    public String getLoad_ID() {
        return Load_ID;
    }

    public void setLoad_ID(String load_ID) {
        Load_ID = load_ID;
    }
}

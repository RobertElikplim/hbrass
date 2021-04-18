package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Income")
public class Income {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Income_ID")
    private String Income_ID;
    @Column(name = "Load_ID")
    private String Load_ID;
    @Column(name = "Load_Fare")
    private String Load_Fare;
    @Column(name = "Commission")
    private String Commission;
    @Column(name = "Insurance")
    private String Insurance;
    @Column(name = "Trip_Expense_ID")
    private String Trip_Expense_ID;
    @Column(name = "Total_Income")
    private String Total_Income;
    @Column(name = "active")
    private boolean active;

    public Income(){

    }

    public Income(String income_ID, String load_ID, String load_Fare, String commission, String insurance, String trip_Expense_ID, String total_Income) {
        Income_ID = income_ID;
        Load_ID = load_ID;
        Load_Fare = load_Fare;
        Commission = commission;
        Insurance = insurance;
        Trip_Expense_ID = trip_Expense_ID;
        Total_Income = total_Income;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getIncome_ID() {
        return Income_ID;
    }

    public void setIncome_ID(String income_ID) {
        Income_ID = income_ID;
    }

    public String getLoad_ID() {
        return Load_ID;
    }

    public void setLoad_ID(String load_ID) {
        Load_ID = load_ID;
    }

    public String getLoad_Fare() {
        return Load_Fare;
    }

    public void setLoad_Fare(String load_Fare) {
        Load_Fare = load_Fare;
    }

    public String getCommission() {
        return Commission;
    }

    public void setCommission(String commission) {
        Commission = commission;
    }

    public String getInsurance() {
        return Insurance;
    }

    public void setInsurance(String insurance) {
        Insurance = insurance;
    }

    public String getTrip_Expense_ID() {
        return Trip_Expense_ID;
    }

    public void setTrip_Expense_ID(String trip_Expense_ID) {
        Trip_Expense_ID = trip_Expense_ID;
    }

    public String getTotal_Income() {
        return Total_Income;
    }

    public void setTotal_Income(String total_Income) {
        Total_Income = total_Income;
    }
}

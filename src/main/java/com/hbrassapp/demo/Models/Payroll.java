package com.hbrassapp.demo.Models;

import javax.persistence.*;

@Entity
@Table(name = "Payroll")
public class Payroll {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Payroll_ID")
    private String Payroll_ID;
    @Column(name = "Rate")
    private String Rate;
    @Column(name = "Employee_ID")
    private String Employee_ID;
    @Column(name = "Payment_Type")
    private String Payment_Type;
    @Column(name = "Pay_Period_Start")
    private String Pay_Period_Start;
    @Column(name = "Pay_Period_End")
    private String Pay_Period_End;

    public Payroll(String payroll_ID, String rate, String employee_ID, String payment_Type, String pay_Period_Start, String pay_Period_End) {
        Payroll_ID = payroll_ID;
        Rate = rate;
        Employee_ID = employee_ID;
        Payment_Type = payment_Type;
        Pay_Period_Start = pay_Period_Start;
        Pay_Period_End = pay_Period_End;
    }

    public Payroll() {

    }

    public String getPayroll_ID() {
        return Payroll_ID;
    }

    public void setPayroll_ID(String payroll_ID) {
        Payroll_ID = payroll_ID;
    }

    public String getRate() {
        return Rate;
    }

    public void setRate(String rate) {
        Rate = rate;
    }

    public String getEmployee_ID() {
        return Employee_ID;
    }

    public void setEmployee_ID(String employee_ID) {
        Employee_ID = employee_ID;
    }

    public String getPayment_Type() {
        return Payment_Type;
    }

    public void setPayment_Type(String payment_Type) {
        Payment_Type = payment_Type;
    }

    public String getPay_Period_Start() {
        return Pay_Period_Start;
    }

    public void setPay_Period_Start(String pay_Period_Start) {
        Pay_Period_Start = pay_Period_Start;
    }

    public String getPay_Period_End() {
        return Pay_Period_End;
    }

    public void setPay_Period_End(String pay_Period_End) {
        Pay_Period_End = pay_Period_End;
    }
}

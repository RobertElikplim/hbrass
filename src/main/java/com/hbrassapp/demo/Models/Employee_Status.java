package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Employee_Status")
public class Employee_Status {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Employee_ID")
    private String Employee_ID;
    @Column(name = "Employee_Status")
    private String Employee_Status;
    @Column(name = "active")
    private boolean active;

    public Employee_Status(String employee_ID, String employee_Status) {
        Employee_ID = employee_ID;
        Employee_Status = employee_Status;
    }

    public Employee_Status() {

    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getEmployee_ID() {
        return Employee_ID;
    }

    public void setEmployee_ID(String employee_ID) {
        Employee_ID = employee_ID;
    }

    public String getEmployee_Status() {
        return Employee_Status;
    }

    public void setEmployee_Status(String employee_Status) {
        Employee_Status = employee_Status;
    }
}

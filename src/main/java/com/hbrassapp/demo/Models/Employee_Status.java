package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Employee_Status")
public class Employee_Status {
    @Id
    @Column(name = "Employee_ID")
    private String Employee_ID;
    @Column(name = "Employee_Status")
    private String Employee_Status;

    public Employee_Status(String employee_ID, String employee_Status) {
        Employee_ID = employee_ID;
        Employee_Status = employee_Status;
    }

    public Employee_Status() {

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

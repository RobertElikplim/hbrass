package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Office_Position")
public class Office_Position {
    @Id
    @Column(name = "Position_ID")
    private String Position_ID;
    @Column(name = "Employee_Position")
    private String Employee_Position;

    public Office_Position(String position_ID, String employee_Position) {
        Position_ID = position_ID;
        Employee_Position = employee_Position;
    }

    public Office_Position() {

    }

    public String getPosition_ID() {
        return Position_ID;
    }

    public void setPosition_ID(String position_ID) {
        Position_ID = position_ID;
    }

    public String getEmployee_Position() {
        return Employee_Position;
    }

    public void setEmployee_Position(String employee_Position) {
        Employee_Position = employee_Position;
    }
}
package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "States")
public class States {
    @Id
    @Column(name = "State_Code")
    private String State_Code;
    @Column(name = "State_Name")
    private String State_Name;
    @Column(name = "active")
    private boolean active;

    public States(){

    }

    public States(String state_Code, String state_Name) {
        State_Code = state_Code;
        State_Name = state_Name;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getState_Code() {
        return State_Code;
    }

    public void setState_Code(String state_Code) {
        State_Code = state_Code;
    }

    public String getState_Name() {
        return State_Name;
    }

    public void setState_Name(String state_Name) {
        State_Name = state_Name;
    }
}

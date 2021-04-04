package com.hbrassapp.demo.Models;

import javax.persistence.*;

@Entity
@Table(name = "States")
public class States {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "State_Code")
    private String State_Code;
    @Column(name = "State_Name")
    private String State_Name;

    public States(){

    }

    public States(String state_Code, String state_Name) {
        State_Code = state_Code;
        State_Name = state_Name;
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

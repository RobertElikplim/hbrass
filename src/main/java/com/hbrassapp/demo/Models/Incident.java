package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Incident")
public class Incident
{
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Incident_ID")
    private String Incident_ID;
    @Column(name = "Load_ID")
    private String Load_ID;
    @Column(name = "Employee_ID")
    private String Employee_ID;
    @Column(name = "Incident_Status")
    private String Incident_Status;
    @Column(name = "Incident_Type")
    private String Incident_Type;
    @Column(name = "Remarks")
    private String Remarks;
    @Column(name = "active")
    private boolean active;

    public Incident(){ }

    public Incident(String Incident_ID, String Load_ID, String Employee_ID, String Incident_Status,
                    String Incident_Type, String Remarks)
    {
        this.Incident_ID = Incident_ID;
        this.Load_ID = Load_ID;
        this.Employee_ID = Employee_ID;
        this.Incident_Status = Incident_Status;
        this.Incident_Type = Incident_Type;
        this.Remarks = Remarks;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getIncident_ID() {
        return Incident_ID;
    }

    public void setIncident_ID(String incident_ID) {
        Incident_ID = incident_ID;
    }

    public String getLoad_ID() {
        return Load_ID;
    }

    public void setLoad_ID(String load_ID) {
        Load_ID = load_ID;
    }

    public String getEmployee_ID() {
        return Employee_ID;
    }

    public void setEmployee_ID(String employee_ID) {
        Employee_ID = employee_ID;
    }

    public String getIncident_Status() {
        return Incident_Status;
    }

    public void setIncident_Status(String incident_Status) {
        Incident_Status = incident_Status;
    }

    public String getIncident_Type() {
        return Incident_Type;
    }

    public void setIncident_Type(String incident_Type) {
        Incident_Type = incident_Type;
    }

    public String getRemarks() {
        return Remarks;
    }

    public void setRemarks(String remarks) {
        Remarks = remarks;
    }
}

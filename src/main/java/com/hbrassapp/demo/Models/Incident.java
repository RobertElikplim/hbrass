package com.hbrassapp.demo.Models;

import javax.persistence.*;

@Entity
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
    @Column(name = "Incident_Status_ID")
    private String Incident_Status_ID;
    @Column(name = "Incident_Type_ID")
    private String Incident_Type_ID;
    @Column(name = "Remarks")
    private String Remarks;

    public Incident(){ }

    public Incident(String Incident_ID, String Load_ID, String Employee_ID, String Incident_Status_ID,
                    String Incident_Type_ID, String Remarks)
    {
        this.Incident_ID = Incident_ID;
        this.Load_ID = Load_ID;
        this.Employee_ID = Employee_ID;
        this.Incident_Status_ID = Incident_Status_ID;
        this.Incident_Type_ID = Incident_Type_ID;
        this.Remarks = Remarks;
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

    public String getIncident_Status_ID() {
        return Incident_Status_ID;
    }

    public void setIncident_Status_ID(String incident_Status_ID) {
        Incident_Status_ID = incident_Status_ID;
    }

    public String getIncident_Type_ID() {
        return Incident_Type_ID;
    }

    public void setIncident_Type_ID(String incident_Type_ID) {
        Incident_Type_ID = incident_Type_ID;
    }

    public String getRemarks() {
        return Remarks;
    }

    public void setRemarks(String remarks) {
        Remarks = remarks;
    }
}

package com.hbrassapp.demo.Models;

import javax.persistence.*;


@Entity
@Table(name = "Incident_Status")
public class Incident_Status
{
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Incident_Status_ID")
    private String Incident_Status_ID;
    @Column(name = "Incident_Status")
    private String Incident_Status;

    public Incident_Status(){ }

    public Incident_Status(String Incident_Status_ID, String Incident_Status)
    {
        this.Incident_Status = Incident_Status;
        this.Incident_Status_ID = Incident_Status_ID;

    }

    public String getIncident_Status_ID() {
        return Incident_Status_ID;
    }

    public void setIncident_Status_ID(String incident_Status_ID) {
        Incident_Status_ID = incident_Status_ID;
    }

    public String getIncident_Status() {
        return Incident_Status;
    }

    public void setIncident_Status(String incident_Status) {
        Incident_Status = incident_Status;
    }
}

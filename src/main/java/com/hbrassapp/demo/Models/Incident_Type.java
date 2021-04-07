package com.hbrassapp.demo.Models;

import javax.persistence.*;

@Entity
@Table(name = "Incident_Type")
public class Incident_Type
{
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Incident_Type_ID")
    private String Incident_Type_ID;
    @Column(name = "Type_of_Incident")
    private String Type_of_Incident;

    public Incident_Type(){ }

    public Incident_Type(String Incident_Type_ID, String Type_of_Incident)
    {
        this.Incident_Type_ID = Incident_Type_ID;
        this.Type_of_Incident = Type_of_Incident;

    }

    public String getIncident_Type_ID() {
        return Incident_Type_ID;
    }

    public void setIncident_Type_ID(String incident_Type_ID) {
        Incident_Type_ID = incident_Type_ID;
    }

    public String getType_of_Incident() {
        return Type_of_Incident;
    }

    public void setType_of_Incident(String type_of_Incident) {
        Type_of_Incident = type_of_Incident;
    }
}

package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table(name = "Trailer")
public class Trailer {
    @Id
    @Column(name = "Trailer_ID")
    private String Trailer_ID ;
    @Column(name = "Trailer_Code")
    private String Trailer_Code ;
    @Column(name = "Type_Of_Trailer")
    private String Type_Of_Trailer ;
    @Column(name = "Weight_Of_Trailer")
    private String Weight_Of_Trailer ;
    @Column(name = "License_Plate")
    private String License_Plate ;
    @Column(name = "active")
    private boolean active;


    public Trailer(String trailer_ID, String trailer_Code, String type_Of_Trailer, String weight_Of_Trailer, String license_Plate) {
        Trailer_ID = trailer_ID;
        Trailer_Code = trailer_Code;
        Type_Of_Trailer = type_Of_Trailer;
        Weight_Of_Trailer = weight_Of_Trailer;
        License_Plate = license_Plate;
    }

    public Trailer() {

    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getTrailer_ID() {
        return Trailer_ID;
    }

    public void setTrailer_ID(String trailer_ID) {
        Trailer_ID = trailer_ID;
    }

    public String getTrailer_Code() {
        return Trailer_Code;
    }

    public void setTrailer_Code(String trailer_Code) {
        Trailer_Code = trailer_Code;
    }

    public String getType_Of_Trailer() {
        return Type_Of_Trailer;
    }

    public void setType_Of_Trailer(String type_Of_Trailer) {
        Type_Of_Trailer = type_Of_Trailer;
    }

    public String getWeight_Of_Trailer() {
        return Weight_Of_Trailer;
    }

    public void setWeight_Of_Trailer(String weight_Of_Trailer) {
        Weight_Of_Trailer = weight_Of_Trailer;
    }

    public String getLicense_Plate() {
        return License_Plate;
    }

    public void setLicense_Plate(String license_Plate) {
        License_Plate = license_Plate;
    }
}

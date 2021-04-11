package com.hbrassapp.demo.Models;

import javax.persistence.*;

@Entity
@Table(name = "Trailer")
public class Trailer {
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Column_ID")
    private String Column_ID ;
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

    public Trailer(String column_ID) {
        Column_ID = column_ID;
    }

    public Trailer(String trailer_ID, String trailer_Code, String type_Of_Trailer, String weight_Of_Trailer, String license_Plate) {
        Trailer_ID = trailer_ID;
        Trailer_Code = trailer_Code;
        Type_Of_Trailer = type_Of_Trailer;
        Weight_Of_Trailer = weight_Of_Trailer;
        License_Plate = license_Plate;
    }

    public Trailer() {

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

    public String getColumn_ID() {
        return Column_ID;
    }

    public void setColumn_ID(String column_ID) {
        Column_ID = column_ID;
    }

    public void setLicense_Plate(String license_Plate) {
        License_Plate = license_Plate;
    }
}

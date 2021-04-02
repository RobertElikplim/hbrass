package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Schedule {

    @Id
    @Column(name = "Schedule_ID")
    private String ScheduleID;
    @Column(name = "Employee_ID")
    private String employeeID;
    @Column(name = "Time_Off_Request")
    private String timeOffRequest;
    @Column(name = "Vacation_Time_Start")
    private String vacationStart;
    @Column(name = "Vacation_Time_End")
    private String vacationEnd;

    public Schedule (){

    }

    public Schedule(String scheduleID, String employeeID, String timeOffRequest, String vacationStart, String vacationEnd) {
        ScheduleID = scheduleID;
        this.employeeID = employeeID;
        this.timeOffRequest = timeOffRequest;
        this.vacationStart = vacationStart;
        this.vacationEnd = vacationEnd;
    }

    public String getScheduleID() {
        return ScheduleID;
    }

    public void setScheduleID(String scheduleID) {
        ScheduleID = scheduleID;
    }

    public String getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(String employeeID) {
        this.employeeID = employeeID;
    }

    public String getTimeOffRequest() {
        return timeOffRequest;
    }

    public void setTimeOffRequest(String timeOffRequest) {
        this.timeOffRequest = timeOffRequest;
    }

    public String getVacationStart() {
        return vacationStart;
    }

    public void setVacationStart(String vacationStart) {
        this.vacationStart = vacationStart;
    }

    public String getVacationEnd() {
        return vacationEnd;
    }

    public void setVacationEnd(String vacationEnd) {
        this.vacationEnd = vacationEnd;
    }
}

package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table
public class Schedule {

    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
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
    @Column(name = "active")
    private boolean active;

    public Schedule (){

    }

    public Schedule(String scheduleID, String employeeID, String timeOffRequest, String vacationStart, String vacationEnd) {
        ScheduleID = scheduleID;
        this.employeeID = employeeID;
        this.timeOffRequest = timeOffRequest;
        this.vacationStart = vacationStart;
        this.vacationEnd = vacationEnd;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
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

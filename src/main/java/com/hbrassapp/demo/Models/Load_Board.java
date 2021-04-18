package com.hbrassapp.demo.Models;

import org.hibernate.annotations.Where;

import javax.persistence.*;

@Entity
@Where(clause = "active = 1")
@Table
public class Load_Board {

    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Load_Board_ID")
    private String loadBoardID;
    @Column(name = "Board_Name")
    private String boardName;
    @Column(name = "Website")
    private String website;
    @Column(name = "Subscribed")
    private String subscribed;
    @Column(name = "active")
    private boolean active;

    public Load_Board (){

    }

    public Load_Board(String loadBoardID, String boardName, String website, String subscribed) {
        this.loadBoardID = loadBoardID;
        this.boardName = boardName;
        this.website = website;
        this.subscribed = subscribed;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getLoadBoardID() {
        return loadBoardID;
    }

    public void setLoadBoardID(String loadBoardID) {
        this.loadBoardID = loadBoardID;
    }

    public String getBoardName() {
        return boardName;
    }

    public void setBoardName(String boardName) {
        this.boardName = boardName;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getSubscribed() {
        return subscribed;
    }

    public void setSubscribed(String subscribed) {
        this.subscribed = subscribed;
    }
}

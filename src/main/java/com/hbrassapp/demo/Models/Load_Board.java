package com.hbrassapp.demo.Models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Load_Board {

    @Id
    @Column(name = "Load_Board_ID")
    private String loadBoardID;
    @Column(name = "Board_Name")
    private String boardName;
    @Column(name = "Website")
    private String website;
    @Column(name = "Subscribed")
    private String subscribed;

    public Load_Board (){

    }

    public Load_Board(String loadBoardID, String boardName, String website, String subscribed) {
        this.loadBoardID = loadBoardID;
        this.boardName = boardName;
        this.website = website;
        this.subscribed = subscribed;
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

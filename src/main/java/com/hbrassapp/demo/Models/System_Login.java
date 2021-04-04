package com.hbrassapp.demo.Models;

import javax.persistence.*;

@Entity
@Table
public class System_Login {

    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "Login_ID")
    private String loginID;
    @Column(name = "Username")
    private String username;
    @Column(name = "Privileges")
    private String privileges;
    @Column(name = "Password")
    private String password;

    public System_Login () {

    }

    public System_Login(String loginID, String username, String privileges, String password) {
        this.loginID = loginID;
        this.username = username;
        this.privileges = privileges;
        this.password = password;
    }

    public String getLoginID() {
        return loginID;
    }

    public void setLoginID(String loginID) {
        this.loginID = loginID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPrivileges() {
        return privileges;
    }

    public void setPrivileges(String privileges) {
        this.privileges = privileges;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

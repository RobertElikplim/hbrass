package com.hbrassapp.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

@Controller
public class MainController {

    final String connectionURL = "jdbc:sqlserver://172.26.54.48:1433;databaseName=HBRASS;user=Hbrass;password=123";

@RequestMapping("/")
    public ModelAndView start() {
    ModelAndView mv = new ModelAndView("index");
    testConnection();
    return mv;
}
    private void testConnection() {
        try {
            Connection conn = DriverManager.getConnection(connectionURL);
            Statement stmt = conn.createStatement();
            System.out.println("\nCONNECTION ESTABLISHED");
            try {
                stmt.execute("CREATE TABLE employees " + "(" +
                        "name VARCHAR(25), " + "id VARCHAR(36))");
                System.out.println("TABLE CREATED");
            } catch (Exception ex) {
                System.out.println("ERROR: " + ex.getMessage());
            }
        }
        catch (Exception ex)
        {
            System.out.println("ERROR: " + ex.getMessage());
        }
    }


}

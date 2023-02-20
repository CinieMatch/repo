/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author This Pc
 */
public class DBConnection {
    private static Connection con;

    private static String url = "jdbc:mysql://127.0.0.1:3306/cinematch?user=root";
    //private static String username = "username";
    //private static String password = "password";
    public static Connection getConnection() throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection(url);
        } catch (SQLException ex) {
          System.out.println("Failed to create the database connection: "+ex);
        }
        return con;
    }
}

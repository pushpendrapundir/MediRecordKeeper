/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medi.docs.helper;

import java.sql.*;
import java.sql.DriverManager;

/**
 *
 * @author Windows
 */
public class ConnectionProvider {
    private static Connection con;
    
    public static Connection getConnection()
    {
        try
        {
           if(con==null){
            //driver Load
            Class.forName("com.mysql.jdbc.Driver");
            //Connection Create
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medidocs1","root","");
        }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medi.docs.dao;

import com.medi.docs.entities.FeedBack;
import com.mysql.jdbc.Connection;
import java.sql.*;




/**
 *
 * @author Windows
 */
public class FeedbackDao {
      
    private final Connection con;
    public FeedbackDao(Connection con)
    {
        this.con=con;
    }
    
    public boolean saveFeedBack(FeedBack f)
    {
        boolean fr=false;
        try
        {
            String query="insert into feedback (name,email,password,feedback) values(?,?,?,?)";
           PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,f.getFname());
            ps.setString(2,f.getFemail());
            ps.setString(3,f.getFpass());
            ps.setString(4,f.getFfeed());
            
            ps.executeUpdate();
            fr=true;
           
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return fr;
    }
    
    
}

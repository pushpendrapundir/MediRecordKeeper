/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medi.docs.dao;

/**
 *
 * @author Windows
 */
import com.medi.docs.entities.Department;
import com.medi.docs.entities.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class DepartmentDao {
   public final Connection con;
    public DepartmentDao(Connection con)
    {
        this.con=con;
    }
    
    public ArrayList<Department> getDepartment()
    {
        ArrayList<Department>dp= new ArrayList<>();
        try
        {
           
            String query="select * from department_detail";
            PreparedStatement ps=con.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
               String depart_name=rs.getString("depart_name");
               int depart_id=rs.getInt("dip");
               String depart_head=rs.getString("depart_head");
               String depart_pics=rs.getString("depart_pic");
                Department d=new Department(depart_name,depart_head,depart_id,depart_pics);
               // System.out.println(depart_name);
                dp.add(d);
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return dp;
        
    }
     public String getDepartmentById(int departid)
    {
        String str="\0";
        try
        {
           
            String query="select * from department_detail where dip=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setInt(1,departid);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
               String depart_name=rs.getString("depart_name");
               int depart_id=rs.getInt("dip");
               String depart_head=rs.getString("depart_head");
               String depart_pics=rs.getString("depart_pic");
                Department d=new Department(depart_name,depart_head,depart_id,depart_pics);
               // System.out.println(depart_name);
               str=depart_name;
                
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return str;
        
    }
    
}

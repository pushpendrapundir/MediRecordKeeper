/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medi.docs.dao;

import com.medi.docs.entities.Admin;
import java.sql.*;

/**
 *
 * @author Windows
 */
public class AdminDao {

    /**
     *
     */
    public final Connection con;
    public AdminDao(Connection con)
    {
        this.con=con;
    }
   
    public boolean saveadmindata(Admin admin)
    {
        boolean f=false;
        try
        {
        String query="insert into admin (adminname,adminaadhar,adminmobile,hospitalname,admingender,adminpassword) values(?,?,?,?,?,?)";
        PreparedStatement ps=this.con.prepareStatement(query);
        
        ps.setString(1,admin.getAdminname());
        ps.setString(2,admin.getAdminaadhar());
        ps.setString(3,admin.getAdminmobile());
        ps.setString(4,admin.getHospitalname());
        ps.setString(5,admin.getAdmingender());
        ps.setString(6,admin.getAdminpass());
        ps.executeUpdate();
        f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
        
    }
    
     public Admin getAdminByAadharAndPassword(String adminaadhar,String adminpassword)
    {
        Admin admin=null;
        try
        {
            String query="select * from admin where adminaadhar=? and adminpassword=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,adminaadhar);
            ps.setString(2,adminpassword);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                admin =new Admin();
                String name=rs.getString("adminname");
                admin.setAdminname(name);
                String aadhar1=rs.getString("adminaadhar");
                admin.setAdminaadhar(aadhar1);
                String mobile=rs.getString("adminmobile");
                admin.setAdminmobile(mobile);
                String hospitalno=rs.getString("hospitalname");
                admin.setHospitalname(hospitalno);
                String gender=rs.getString("admingender");
                admin.setAdmingender(gender);
                String password1=rs.getString("adminpassword");
                admin.setAdminpass(password1);
                Date register=rs.getDate("register");
                admin.setRegister(register);
                String adminpic=rs.getString("adminpic");
                admin.setAdminpic(adminpic);
                
               
                
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return admin;
        
    }
    
   
    
    
}

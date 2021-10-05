/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medi.docs.dao;




import com.medi.docs.entities.User;
import java.sql.*;

/**
 *
 * @author Windows
 */
public class UserDao {
    private final Connection con;
    public UserDao(Connection con)
    {
        this.con=con;
    }
    
    public boolean saveuser(User user)
    {
        boolean f=false;
        try
        {
            String query="insert into user (username,useraadhar,mobile,password,gender) values(?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,user.getUname());
            ps.setString(2,user.getAadhar());
            ps.setString(3,user.getMobile());
             ps.setString(4,user.getPassword());
            ps.setString(5,user.getGender());
           
            ps.executeUpdate();
            
            f=true;
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    public User getUserByAadharAndPassword(String aadhar,String password)
    {
        User user=null;
        try
        {
            String query="select * from user where useraadhar=? and password=?";
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1,aadhar);
            ps.setString(2,password);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                user =new User();
                String name=rs.getString("username");
                user.setUname(name);
                String aadhar1=rs.getString("useraadhar");
                user.setAadhar(aadhar1);
                String mobile=rs.getString("mobile");
                user.setMobile(mobile);
                String gender=rs.getString("gender");
                user.setGender(gender);
                String password1=rs.getString("password");
                user.setPassword(password1);
                Date date=rs.getDate("date");
                user.setDate(date);
               
               
                
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
        
    }
    public boolean UpdateUserData(User u)
    {
        boolean f=false;
        try{
        String query="update user set uname=?,mobile=?,password=?,gender=? where aadhar=?";
        PreparedStatement ps=this.con.prepareStatement(query);
        ps.setString(1,u.getUname());
        ps.setString(2,u.getMobile());
        ps.setString(3,u.getPassword());
        ps.setString(4,u.getGender());
        ps.setString(5,u.getAadhar());
        ps.executeUpdate();
        f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medi.docs.dao;
import com.medi.docs.entities.Document;
import java.io.File;
import java.io.FileInputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.annotation.MultipartConfig;
/**
 *
 * @author Windows
 */
@MultipartConfig
public class DocumentDao {
    
    private final Connection con;
    
    public DocumentDao(Connection con)
    {
        this.con=con;
    }
    
    public boolean saveDocumentdetail(Document d)
    {
        boolean f=false;
      
       try
        {
            
           
            String query="insert into document(patientname,doctorname,departid,adminname,document_pic,document_title) values (?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(query);
            
            ps.setString(1,d.getPatientname());
            ps.setString(2,d.getDoctorname());
            ps.setInt(3,d.getDepartid());
            ps.setString(4,d.getAdminname());
           ps.setString(5,d.getDocumentpic());
            ps.setString(6,d.getDocumenttitle());
            
        
            
            ps.executeUpdate();
            
            f=true;
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
   public List<Document> getDocByCatid(int departid)
   {
       List<Document> list=new ArrayList<>();
       
       try
       {
           String query="select * from document where departid=?";
           
           PreparedStatement ps=this.con.prepareStatement(query);
           ps.setInt(1,departid);
           
           ResultSet rs=ps.executeQuery();
           while(rs.next())
           {
              int dip=rs.getInt("dip");
               String patientname1=rs.getString("patientname");
               String document_pic=rs.getString("document_pic");
               String document_title=rs.getString("document_title");
               String adminname=rs.getString("adminname");
               //Integer departid1=rs.getInt("departid");
               String doctorname=rs.getString("doctorname");
               Date date=rs.getDate("reg_date");
               
               //int userid=rs.getInt("userid");
               Document p=new Document(dip,patientname1,doctorname,departid,adminname,document_pic,document_title,date);
               list.add(p);
           }
           
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       
       return list;
   }
    public ArrayList<Document> getDocAll(String patientname)
   {
       ArrayList<Document> list=new ArrayList<>();
       
       try
       {
           String query="select * from document where patientname=?";
           //System.out.println(patientname);
           PreparedStatement ps=this.con.prepareStatement(query);
           ps.setString(1,patientname);
           
           ResultSet rs=ps.executeQuery();
           while(rs.next())
           {
              Integer dip=rs.getInt("dip");
               String patientname1=rs.getString("patientname");
                  String doctorname=rs.getString("doctorname");
                  Integer departid=rs.getInt("departid");
                 String adminname=rs.getString("adminname");
               String document_pic=rs.getString("document_pic");
               String document_title=rs.getString("document_title");
              Date date=rs.getDate("reg_date");
               
               //int userid=rs.getInt("userid");
             
               Document p=new Document(dip,patientname1,doctorname,departid,adminname,document_pic,document_title,date);
               list.add(p);
           }
           
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       
       return list;
   }
     
    
}

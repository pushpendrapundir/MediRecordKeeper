/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medi.docs.entities;

import java.util.Date;

/**
 *
 * @author Windows
 */
public class Admin {
    
    private String adminname;
    private String adminaadhar;
    private String adminmobile;
    private String hospitalname;
    private String admingender;
    private String adminpass;
    private int adminid;
    private Date register;
    private String adminpic;

    public Admin(String adminname, String adminaadhar, String adminmobile, String hospitalname, String admingender, String adminpass, int adminid, Date register, String adminpic) {
        this.adminname = adminname;
        this.adminaadhar = adminaadhar;
        this.adminmobile = adminmobile;
        this.hospitalname = hospitalname;
        this.admingender = admingender;
        this.adminpass = adminpass;
        this.adminid = adminid;
        this.register = register;
        this.adminpic = adminpic;
    }

    public Date getRegister() {
        return register;
    }

    public void setRegister(Date register) {
        this.register = register;
    }

    public String getAdminpic() {
        return adminpic;
    }

    public void setAdminpic(String adminpic) {
        this.adminpic = adminpic;
    }
    
    

    public int getAdminid() {
        return adminid;
    }

    public void setAdminid(int adminid) {
        this.adminid = adminid;
    }
    

    public Admin(String adminname, String adminaadhar, String adminmobile, String hospitalname, String admingender, String adminpass) {
        this.adminname = adminname;
        this.adminaadhar = adminaadhar;
        this.adminmobile = adminmobile;
        this.hospitalname = hospitalname;
        this.admingender = admingender;
        this.adminpass = adminpass;
    }

    public Admin() {
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getAdminaadhar() {
        return adminaadhar;
    }

    public void setAdminaadhar(String adminaadhar) {
        this.adminaadhar = adminaadhar;
    }

    public String getAdminmobile() {
        return adminmobile;
    }

    public void setAdminmobile(String adminmobile) {
        this.adminmobile = adminmobile;
    }

    public String getHospitalname() {
        return hospitalname;
    }

    public void setHospitalname(String hospitalname) {
        this.hospitalname = hospitalname;
    }

    public String getAdmingender() {
        return admingender;
    }

    public void setAdmingender(String admingender) {
        this.admingender = admingender;
    }

    public String getAdminpass() {
        return adminpass;
    }

    public void setAdminpass(String adminpass) {
        this.adminpass = adminpass;
    }
    
    
    
}

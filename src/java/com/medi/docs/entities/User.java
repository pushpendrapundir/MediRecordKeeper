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
public class User {
    private int uid;
    private String uname;
    private String aadhar;
    private String mobile;
    private String password;
    private Date date;
    private String gender;
    private int depart_id;

    public User(String uname, String aadhar, String mobile, String password, Date date, String gender, int depart_id) {
        this.uname = uname;
        this.aadhar = aadhar;
        this.mobile = mobile;
        this.password = password;
        this.date = date;
        this.gender = gender;
        this.depart_id = depart_id;
    }

    
    public int getDepart_id() {
        return depart_id;
    }

    public void setDepart_id(int depart_id) {
        this.depart_id = depart_id;
    }
    
    
    
    
    public User(String uname, String aadhar, String mobile, String password) {
        this.uname = uname;
        this.aadhar = aadhar;
        this.mobile = mobile;
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public User(String uname, String aadhar, String mobile, String password, String gender) {
        this.uname = uname;
        this.aadhar = aadhar;
        this.mobile = mobile;
        this.password = password;
        this.gender = gender;
    }

    public User(String uname, String aadhar, String mobile, String password, Date date, String gender) {
        this.uname = uname;
        this.aadhar = aadhar;
        this.mobile = mobile;
        this.password = password;
        this.date = date;
        this.gender = gender;
    }
    

    public User() {
    }

    public User(String uname, String aadhar, String mobile, String password, Date date) {
        this.uname = uname;
        this.aadhar = aadhar;
        this.mobile = mobile;
        this.password = password;
        this.date = date;
    }
    
    

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getAadhar() {
        return aadhar;
    }

    public void setAadhar(String aadhar) {
        this.aadhar = aadhar;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
    
    
    
}

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
public class FeedBack {
    
    private int fid;
    private String fname;
    private String femail;
    private String fpass;
    private Date fdate;
    private String ffeed;

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getFemail() {
        return femail;
    }

    public void setFemail(String femail) {
        this.femail = femail;
    }

    public String getFpass() {
        return fpass;
    }

    public void setFpass(String fpass) {
        this.fpass = fpass;
    }

    public Date getFdate() {
        return fdate;
    }

    public void setFdate(Date fdate) {
        this.fdate = fdate;
    }

    public String getFfeed() {
        return ffeed;
    }

    public void setFfeed(String ffeed) {
        this.ffeed = ffeed;
    }

    public FeedBack() {
    }

    public FeedBack(String fname, String femail, String fpass, String ffeed) {
        this.fname = fname;
        this.femail = femail;
        this.fpass = fpass;
        this.ffeed = ffeed;
    }

    public FeedBack(int fid, String fname, String femail, String fpass, Date fdate, String ffeed) {
        this.fid = fid;
        this.fname = fname;
        this.femail = femail;
        this.fpass = fpass;
        this.fdate = fdate;
        this.ffeed = ffeed;
    }
    
    
    
  
}

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
public class Document {
    private int dip;
    private String patientname;
    private String doctorname;
    private int departid;
    private String adminname;
    private String documentpic;
    private String documenttitle;
    private Date reg_date;

    public Document(int dip, String patientname, String doctorname, int departid, String adminname, String documentpic, String documenttitle, Date reg_date) {
        this.dip = dip;
        this.patientname = patientname;
        this.doctorname = doctorname;
        this.departid = departid;
        this.adminname = adminname;
        this.documentpic = documentpic;
        this.documenttitle = documenttitle;
        this.reg_date = reg_date;
    }
    
    

    public Document(String patientname, String doctorname, int departid, String adminname, String documentpic, String documenttitle) {
        this.patientname = patientname;
        this.doctorname = doctorname;
        this.departid = departid;
        this.adminname = adminname;
        this.documentpic = documentpic;
        this.documenttitle = documenttitle;
    }

    
    public Document() {
    }

    
    public Document(String patientname, String doctorname, int departid, String adminname, String documentpic, String documenttitle, Date reg_date) {
        this.patientname = patientname;
        this.doctorname = doctorname;
        this.departid = departid;
        this.adminname = adminname;
        this.documentpic = documentpic;
        this.documenttitle = documenttitle;
        this.reg_date = reg_date;
    }
    
    

    public String getPatientname() {
        return patientname;
    }

    public void setPatientname(String patientname) {
        this.patientname = patientname;
    }

    public String getDoctorname() {
        return doctorname;
    }

    public void setDoctorname(String doctorname) {
        this.doctorname = doctorname;
    }

    public int getDepartid() {
        return departid;
    }

    public void setDepartid(int departid) {
        this.departid = departid;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getDocumentpic() {
        return documentpic;
    }

    public void setDocumentpic(String documentpic) {
        this.documentpic = documentpic;
    }

    public String getDocumenttitle() {
        return documenttitle;
    }

    public void setDocumenttitle(String documenttitle) {
        this.documenttitle = documenttitle;
    }

    public Date getReg_date() {
        return reg_date;
    }

    public void setReg_date(Date reg_date) {
        this.reg_date = reg_date;
    }
    
    
    
    
    
}

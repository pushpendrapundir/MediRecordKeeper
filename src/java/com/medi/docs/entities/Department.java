/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.medi.docs.entities;

/**
 *
 * @author Windows
 */
public class Department {
     private String depart_name;
    private String depart_head;
    private String depart_pics;
    private int dip;

    public Department(String depart_name, String depart_head) {
        this.depart_name = depart_name;
        this.depart_head = depart_head;
    }

    public Department(String depart_name, String depart_head, int dip,String depart_pics) {
        this.depart_name = depart_name;
        this.depart_head = depart_head;
        this.dip = dip;
        this.depart_pics=depart_pics;
    }

    public Department() {
    }

    public String getDepart_pics() {
        return depart_pics;
    }

    public void setDepart_pics(String depart_pics) {
        this.depart_pics = depart_pics;
    }

    public String getDepart_name() {
        return depart_name;
    }

    public void setDepart_name(String depart_name) {
        this.depart_name = depart_name;
    }

    public String getDepart_head() {
        return depart_head;
    }

    public void setDepart_head(String depart_head) {
        this.depart_head = depart_head;
    }

    public int getDip() {
        return dip;
    }

    public void setDip(int dip) {
        this.dip = dip;
    }
    
    
    
    
}

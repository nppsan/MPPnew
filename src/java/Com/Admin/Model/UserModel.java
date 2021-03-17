/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.project.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author Teju
 */
@Entity
public class UserModel {
    
    @Id @GeneratedValue
    private long Id;
    
    private String txtName;

    public void setId(long Id) {
        this.Id = Id;
    }

    public void setTxtName(String txtName) {
        this.txtName = txtName;
    }

    public void setTxtSub(String txtSub) {
        this.txtSub = txtSub;
    }

    public void setTxtEmail(String txtEmail) {
        this.txtEmail = txtEmail;
    }

    public void setTxtMobNo(String txtMobNo) {
        this.txtMobNo = txtMobNo;
    }

    public void setTxtFeedback(String txtFeedback) {
        this.txtFeedback = txtFeedback;
    }

    public long getId() {
        return Id;
    }

    public String getTxtName() {
        return txtName;
    }

    public String getTxtSub() {
        return txtSub;
    }

    public String getTxtEmail() {
        return txtEmail;
    }

    public String getTxtMobNo() {
        return txtMobNo;
    }

    public String getTxtFeedback() {
        return txtFeedback;
    }
    private String txtSub;
    private String txtEmail;
    private String txtMobNo;
    private String txtFeedback;
    
        
    
}

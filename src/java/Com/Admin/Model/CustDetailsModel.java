/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import org.hibernate.annotations.NaturalId;

/**
 *
 * @author npp
 */
@Entity
public class CustDetailsModel {

    
    
    @Id @GeneratedValue
    
    private long id;
    
//    @OneToMany( fetch=FetchType.EAGER, cascade=CascadeType.ALL)
//    private List<BillDetailsModel> bills;
//    
//    @NaturalId
//    
//    private int invNum;
    private String mobile;
    private String email;
    private String custName;
    private String addrAP;
    private String addrTal;
    private String addrDist;
    private String gstnAadhar;
    private String addrState;
    private int stateCode;
    

    

    
    
    
    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

//    public int getInvNum() {
//        return invNum;
//    }
//    
//    public void setInvNum(int invNum) {
//        this.invNum = invNum;
//    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public String getAddrAP() {
        return addrAP;
    }

    public void setAddrAP(String addrAP) {
        this.addrAP = addrAP;
    }

    public String getAddrTal() {
        return addrTal;
    }

    public void setAddrTal(String addrTal) {
        this.addrTal = addrTal;
    }

    public String getAddrDist() {
        return addrDist;
    }

    public void setAddrDist(String addrDist) {
        this.addrDist = addrDist;
    }

    public String getGstnAadhar() {
        return gstnAadhar;
    }

    public void setGstnAadhar(String gstnAadhar) {
        this.gstnAadhar = gstnAadhar;
    }

    public String getAddrState() {
        return addrState;
    }

    public void setAddrState(String addrState) {
        this.addrState = addrState;
    }

    public int getStateCode() {
        return stateCode;
    }

    public void setStateCode(int stateCode) {
        this.stateCode = stateCode;
    }

    
}

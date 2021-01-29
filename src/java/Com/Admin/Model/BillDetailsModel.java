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
public class BillDetailsModel {
    
    @Id @GeneratedValue
//    @ManyToOne
//    @JoinColumn(name="CustDetailsModel_id", nullable=false)
   
    private long id;
    
    @NaturalId
    private int invNum;
    private String invDate;
    private String reverseCharge;
    private String invState;
    private int invStateCode;
    private String modeOfTx;
    private String vehicleNum;
    private String suppDate;
    private String placeOfSupp;
    private String consName;
    private String consAP;
    private String consTal;
    private String consDist;
    private String consGstnAadhar;
    private String consState;
    private int consStateCode;

    public int getInvNum() {
        return invNum;
    }

    public void setInvNum(int invNum) {
        this.invNum = invNum;
    }

    

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    

    public String getInvDate() {
        return invDate;
    }

    public void setInvDate(String invDate) {
        this.invDate = invDate;
    }

    public String getReverseCharge() {
        return reverseCharge;
    }

    public void setReverseCharge(String reverseCharge) {
        this.reverseCharge = reverseCharge;
    }

    public String getInvState() {
        return invState;
    }

    public void setInvState(String invState) {
        this.invState = invState;
    }

    public int getInvStateCode() {
        return invStateCode;
    }

    public void setInvStateCode(int invStateCode) {
        this.invStateCode = invStateCode;
    }

    public String getModeOfTx() {
        return modeOfTx;
    }

    public void setModeOfTx(String modeOfTx) {
        this.modeOfTx = modeOfTx;
    }

    public String getVehicleNum() {
        return vehicleNum;
    }

    public void setVehicleNum(String vehicleNum) {
        this.vehicleNum = vehicleNum;
    }

    public String getSuppDate() {
        return suppDate;
    }

    public void setSuppDate(String suppDate) {
        this.suppDate = suppDate;
    }

    public String getPlaceOfSupp() {
        return placeOfSupp;
    }

    public void setPlaceOfSupp(String placeOfSupp) {
        this.placeOfSupp = placeOfSupp;
    }

    public String getConsName() {
        return consName;
    }

    public void setConsName(String consName) {
        this.consName = consName;
    }

    public String getConsAP() {
        return consAP;
    }

    public void setConsAP(String consAP) {
        this.consAP = consAP;
    }

    public String getConsTal() {
        return consTal;
    }

    public void setConsTal(String consTal) {
        this.consTal = consTal;
    }

    public String getConsDist() {
        return consDist;
    }

    public void setConsDist(String consDist) {
        this.consDist = consDist;
    }

    public String getConsGstnAadhar() {
        return consGstnAadhar;
    }

    public void setConsGstnAadhar(String consGstnAadhar) {
        this.consGstnAadhar = consGstnAadhar;
    }

    public String getConsState() {
        return consState;
    }

    public void setConsState(String consState) {
        this.consState = consState;
    }

    public int getConsStateCode() {
        return consStateCode;
    }

    public void setConsStateCode(int consStateCode) {
        this.consStateCode = consStateCode;
    }
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author npp
 */
@Entity
public class SaleProductModel {
    
    @Id @GeneratedValue
    private long id;
    
    @ManyToOne
    @JoinColumn(name="SalesModel_id")
    private SalesModel salesmodel;
    
    //@NaturalId
    private int invNum;
    private String pname;
    private float prate;
    private float quant;
    private float amt;
    private float disco;
    private int sac;

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public float getPrate() {
        return prate;
    }

    public void setPrate(float prate) {
        this.prate = prate;
    }

    public float getQuant() {
        return quant;
    }

    public void setQuant(float quant) {
        this.quant = quant;
    }

    public float getAmt() {
        return amt;
    }

    public void setAmt(float amt) {
        this.amt = amt;
    }

    public float getDisco() {
        return disco;
    }

    public void setDisco(float disco) {
        this.disco = disco;
    }

    public int getSac() {
        return sac;
    }

    public void setSac(int sac) {
        this.sac = sac;
    }
    
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getInvNum() {
        return invNum;
    }

    public void setInvNum(int invNum) {
        this.invNum = invNum;
    }

   

    public SalesModel getSalesmodel() {
        return salesmodel;
    }

    public void setSalesmodel(SalesModel salesmodel) {
        this.salesmodel = salesmodel;
    }

    
}

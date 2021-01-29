/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Model;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import org.hibernate.annotations.NaturalId;

/**
 *
 * @author npp
 */
@Entity
public class SalesModel {
    
    @Id @GeneratedValue
    private long id;
    
    @NaturalId
    private int invNum;
//    private String sac;    

    
    
    @OneToMany(  fetch=FetchType.EAGER, cascade=CascadeType.ALL)
    private List<SaleProductModel> products;
    
//    private float quantity;
//    private float rate;
//    private float amt;
//    private float disco;
    //private float taxableAmt;
//    private int cgst;
//    private int sgst;
//    private int igst;
//    private float total;

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
//
//    public String getSac() {
//        return sac;
//    }
//
//    public void setSac(String sac) {
//        this.sac = sac;
//    }
//
//    public float getQuantity() {
//        return quantity;
//    }
//
//    public void setQuantity(float quantity) {
//        this.quantity = quantity;
//    }
//
//    public float getRate() {
//        return rate;
//    }
//
//    public void setRate(float rate) {
//        this.rate = rate;
//    }
//
//    public float getAmt() {
//        return amt;
//    }
//
//    public void setAmt(float amt) {
//        this.amt = amt;
//    }
//
//    public float getDisco() {
//        return disco;
//    }
//
//    public void setDisco(float disco) {
//        this.disco = disco;
//    }
//
//    public int getCgst() {
//        return cgst;
//    }
//
//    public void setCgst(int cgst) {
//        this.cgst = cgst;
//    }
//
//    public int getSgst() {
//        return sgst;
//    }
//
//    public void setSgst(int sgst) {
//        this.sgst = sgst;
//    }
//
//    public int getIgst() {
//        return igst;
//    }
//
//    public void setIgst(int igst) {
//        this.igst = igst;
//    }
//
//    public float getTotal() {
//        return total;
//    }
//
//    public void setTotal(float total) {
//        this.total = total;
//    }

    public List<SaleProductModel> getProducts() {
        return products;
    }

    public void setProducts(List<SaleProductModel> products) {
        this.products = products;
    }
}

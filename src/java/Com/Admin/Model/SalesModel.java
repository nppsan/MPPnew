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
public class SalesModel{
    
    @Id @GeneratedValue
    private long id;
    
    @NaturalId
    private int invNum;
//    private String sac;    

    
    
    @OneToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
    private List<SaleProductModel> products;
    private String invDate;
    private long bid;
    private long cid;
//    private float finalBillAmt;
//    private float quantity;
//    private float rate;
//    private float amt;
//    private float disco;
//    private float taxableAmt;
//    private int cgst;
//    private int sgst;
//    private int igst;
//    private float total;
    public String getInvDate() {
        return invDate;
    }

    public void setInvDate(String invDate) {
        this.invDate = invDate;
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


    public List<SaleProductModel> getProducts() {
        return products;
    }

    public void setProducts(List<SaleProductModel> products) {
        this.products = products;
    }

//    public SalesModel(long id, int invNum, List<SaleProductModel> products) {
//        this.id = id;
//        this.invNum = invNum;
//        this.products = products;
//    }

    public long getBid() {
        return bid;
    }

    public void setBid(long bid) {
        this.bid = bid;
    }

    public long getCid() {
        return cid;
    }

    public void setCid(long cid) {
        this.cid = cid;
    }

//    public float getFinalBillAmt() {
//        return finalBillAmt;
//    }
//
//    public void setFinalBillAmt(float finalBillAmt) {
//        this.finalBillAmt = finalBillAmt;
//    }
    
    
}

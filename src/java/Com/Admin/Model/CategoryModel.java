/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author npp
 */
@Entity
public class CategoryModel {
    
    @Id @GeneratedValue
    private long id;
    private String Category;
    
    public long getId() {
        return id;
    }

    public void setId(long Id) {
        this.id = Id;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }
    
    
    
}

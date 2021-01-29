/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Dao;

import Com.Admin.Model.AdminModel;
import Com.Util.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

/**
 * 
 * @author npp
 */
public class AdminDao {
    
    //protected String empName;
          
    public boolean save(AdminModel r) {
        Session session = HibernateUtil.getSessionFactory().openSession();
     
        Transaction t = null;

        try {
            t = session.getTransaction();
            t.begin();
            session.saveOrUpdate(r);
            t.commit();
        } catch (Exception e) {
            e.printStackTrace();
            t.rollback();
        } finally {
            session.close();
        }
        return true;
    }

 

    public List<AdminModel> getAll() {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        Criteria c = hsession.createCriteria(AdminModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            List<AdminModel> empList = c.list();
            tx.commit();
            return empList;
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }


    public void Update(AdminModel i) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        try {
            System.err.println(i);
            session.update(i);
            tx.commit();

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            session.close();
        }
    }

    public int Delete(long id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        try {
            AdminModel deleteObject = (AdminModel) session.load(AdminModel.class, id);
            session.delete(deleteObject);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
            return 0;
        } finally {
            session.close();

        }
        return 1;

    
}
    public AdminModel getById(long id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        AdminModel u = null;
        Criteria c = hsession.createCriteria(AdminModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("Id", id));
            u = (AdminModel) c.uniqueResult();
            tx.commit();
            if (u != null) {
                return u;
            }

        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }

    public boolean login(String username, String password) {
        
        boolean b = false;
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        AdminModel u = null;
        Criteria c = hsession.createCriteria(AdminModel.class);
        Transaction tx = hsession.beginTransaction();
        try {
            
            c.add(Restrictions.eq("uname", username));
            u = (AdminModel) c.uniqueResult();
            
               
            if(password.equals(u.getPwd()))
            {
                
                b = true;
               
             
            }else{
            
                 
                b = false;
            }
            
       
            
            //return empList;
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
     return b;
    //To change body of generated methods, choose Tools | Templates.
    }
}
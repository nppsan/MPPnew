/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Dao;

import Com.Admin.Model.SalesModel;
import Com.Util.HibernateUtil;
import java.util.ArrayList;
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
public class SalesDao {
    
     public boolean save(SalesModel r) {
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

 

    public List<SalesModel> getAll() {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        Criteria c = hsession.createCriteria(SalesModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            List<SalesModel> empList = c.list();
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
    
    public List<SalesModel> queryList(String startDate, String endDate){
    SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        Criteria c = hsession.createCriteria(SalesModel.class);
        Transaction tx = hsession.beginTransaction();
        try {
//id, bid, cid, invDate, invNum
            List<SalesModel> saleList;
            c.add(Restrictions.between("invDate", startDate, endDate));
            System.out.println("Sale List"+c.list());
            saleList = c.list();
            tx.commit();
            return saleList;
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
        } finally {
            hsession.close();
        }
        return null;
    }
    
    public static  List<SalesModel> removeDuplicates(List<SalesModel> list)
    {
  
        // Create a new ArrayList
        List<SalesModel> newList = new ArrayList<SalesModel>();
  
        // Traverse through the first list
        for (SalesModel element : list) {
  
            // If this element is not present in newList
            // then add it
            if (!newList.contains(element)) {
  
                newList.add(element);
            }
        }
  
        // return the new list
        return newList;
    }
  

    public void Update(SalesModel i) {
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
            SalesModel deleteObject = (SalesModel) session.load(SalesModel.class, id);
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
    public SalesModel getById(long id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        SalesModel u = null;
        Criteria c = hsession.createCriteria(SalesModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("id", id));
            u = (SalesModel) c.uniqueResult();
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
    
    
    public SalesModel getByNaturalId(int id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        SalesModel u = null;
        Criteria c = hsession.createCriteria(SalesModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("invNum", id));
            u = (SalesModel) c.uniqueResult();
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
    
    
}

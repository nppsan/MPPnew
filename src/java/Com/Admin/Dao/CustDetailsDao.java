/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Dao;

import Com.Admin.Model.CustDetailsModel;
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
public class CustDetailsDao {
//    int invNum, 
//                            String mobile, 
//                            String email,
//                            String custName, 
//                            String addrAP, 
//                            String addrTal, 
//                            String addrDist, 
//                            String gstnAadhar, 
//                            String addrState, 
//                            int stateCode)
    public CustDetailsDao(){
    
    
    }
    
    public boolean save(CustDetailsModel r) {
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

 

    public List<CustDetailsModel> getAll() {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        Criteria c = hsession.createCriteria(CustDetailsModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            List<CustDetailsModel> empList = c.list();
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


    public void Update(CustDetailsModel i) {
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
            CustDetailsModel deleteObject = (CustDetailsModel) session.load(CustDetailsModel.class, id);
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
    public CustDetailsModel getById(long id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        CustDetailsModel u = null;
        Criteria c = hsession.createCriteria(CustDetailsModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("id", id));
            u = (CustDetailsModel) c.uniqueResult();
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
    
    
    public CustDetailsModel getByNaturalId(int id) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session hsession = sf.openSession();
        CustDetailsModel u = null;
        Criteria c = hsession.createCriteria(CustDetailsModel.class);
        Transaction tx = hsession.beginTransaction();
        try {

            c.add(Restrictions.eq("invNum", id));
            u = (CustDetailsModel) c.uniqueResult();
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

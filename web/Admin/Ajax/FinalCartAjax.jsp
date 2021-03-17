<%-- 
    Document   : ConfirmCartAjax
    Created on : Jan 17, 2021, 3:06:36 PM
    Author     : npp
--%>

<%@page import="Com.Admin.Dao.BillDetailsDao"%>
<%@page import="Com.Admin.Model.BillDetailsModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Com.Admin.Dao.SalesDao"%>
<%@page import="Com.Admin.Model.SalesModel"%>
<%@page import="Com.Admin.Dao.SaleProductDao"%>
<%@page import="Com.Admin.Model.CartModel"%>
<%@page import="java.util.List"%>
<%@page import="Com.Admin.Dao.CartDao"%>
<%@page import="Com.Admin.Model.SaleProductModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //invNum pname prate quant amt disco sac
        
//        long id;
        List<CartModel> cm = new CartDao().getAll();
        List<SaleProductModel> splist = new ArrayList<SaleProductModel>();
        BillDetailsModel bdm = new BillDetailsModel();
        BillDetailsDao bdd = new BillDetailsDao();
        
//        sp = cm;
//        SalesModel sm = new SalesModel();
//        sm.setProducts(sp);
//        SalesDao sd = new SalesDao();
//        sd.save(sm); 
        
        for(CartModel p:cm)
        {
            
            SaleProductModel sp = new SaleProductModel();
            sp.setAmt(p.getAmt());
            sp.setDisco(p.getDisco());
            sp.setInvNum(p.getInvNum());
            sp.setPname(p.getPname());
            sp.setPrate(p.getPrate());  
            sp.setQuant(p.getQuant());
            sp.setSac(p.getSac());
            SaleProductDao spd = new SaleProductDao();
            spd.save(sp);
            splist.add(sp);
        
        }
        SalesModel sm = new SalesModel();
        bdm = bdd.getByNaturalId(cm.get(0).getInvNum());
        System.out.println(bdm.getInvDate());
        sm.setInvDate(bdm.getInvDate());
        sm.setInvNum(cm.get(0).getInvNum());
        sm.setProducts(splist);
        SalesDao sd = new SalesDao();
        sd.save(sm);
        
//        for(SaleProductModel p:sp)
//        {
//            
//        }
        
%>
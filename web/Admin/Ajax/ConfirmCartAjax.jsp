<%-- 
    Document   : ConfirmCartAjax
    Created on : Jan 17, 2021, 3:06:36 PM
    Author     : npp
--%>

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
        
        long id;
        List<CartModel> cm = new CartDao().getAll();
        List<SaleProductModel> sp = new SaleProductDao().getAll();
//        sp = cm;
        SalesModel sm = new SalesModel();
        sm.setProducts(sp);
        SalesDao sd = new SalesDao();
        sd.save(sm); 
        
        for(CartModel p:cm)
        {
            id = p.getId();
            System.out.println(id);
            
            
    
            CartDao cd = new CartDao();
        
            cd.Delete(id);
        
        } 
        
//        for(SaleProductModel p:sp)
//        {
//            
//        }
        
%>
<%-- 
    Document   : ConfirmCartAjax
    Created on : Jan 17, 2021, 3:06:36 PM
    Author     : npp
--%>

<%@page import="java.text.DecimalFormat"%>
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
                out.println("<script type=\"text/javascript\">");
                out.println("alert('In final cart');");
//                out.println("location='Admin/Login.jsp';");
                out.println("</script>");
                int i=0;
                float gTotal = 0.00f;
                float total = 0.00f;
                float tCgst = 0.00f;
        for(CartModel p:cm)
        {
//            i++;
//                    float beforeTaxAmtPerProduct = p.getPrate() * p.getQuant();
//                    float taxableAmtAfterDisco = beforeTaxAmtPerProduct - (beforeTaxAmtPerProduct * p.getDisco())/100;
//                    float amtOfGST =  (taxableAmtAfterDisco * 9/100);
//                        DecimalFormat df = new DecimalFormat();
//                        df.setMaximumFractionDigits(1);
//                    float formatamtOfGST = Float.parseFloat(df.format(amtOfGST));    
//                        System.out.println("df format"+df.format(amtOfGST));
//                        System.out.println("df format"+formatamtOfGST); 
////                        System.out.printf("%.2f", amtOfGST);
//                    float totalAmtAfterTaxes = taxableAmtAfterDisco + amtOfGST*2;
//                    total = total + taxableAmtAfterDisco;
//                    gTotal = gTotal + totalAmtAfterTaxes;
//                    tCgst = tCgst + amtOfGST;
//                    
//                    System.out.println(gTotal);
            SaleProductModel sp = new SaleProductModel();
//            sp.setAmt(gTotal);
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
        sm.setBid(bdm.getId());
        sm.setCid(bdm.getCid());
        sm.setProducts(splist);
        SalesDao sd = new SalesDao();
        sd.save(sm);
        
//        for(SaleProductModel p:sp)
//        {
//            
//        }
        
%>
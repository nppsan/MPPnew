<%-- 
    Document   : AddBillingDetailsAjax
    Created on : Jan 11, 2021, 11:17:18 PM
    Author     : npp
--%>

<%@page import="Com.Admin.Dao.BillDetailsDao"%>
<%@page import="Com.Admin.Model.BillDetailsModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    
        int invNum = Integer.parseInt(request.getParameter("invNum"));
        String invDate = request.getParameter("invDate");
        String reverseCharge = request.getParameter("reverseCharge");
        String invState = request.getParameter("invState");
        int invStateCode = Integer.parseInt(request.getParameter("invStateCode"));
        String modeOfTx = request.getParameter("modeOfTx");
        String vehicleNum = request.getParameter("vehicleNum");
        String suppDate = request.getParameter("suppDate");
        String placeOfSupp = request.getParameter("placeOfSupp");
        String consName = request.getParameter("consName");
        String consAP = request.getParameter("consAP");
        String consTal = request.getParameter("consTal");
        String consDist = request.getParameter("consDist");
        String consGstnAadhar = request.getParameter("consGstnAadhar");
        String consState = request.getParameter("consState");
        int consStateCode = Integer.parseInt(request.getParameter("consStateCode"));
        
        System.out.println("/AddCustDetailsServelet");
        System.out.println("Invoice Numb" + invNum);
        System.out.println("Customer Name "+ consName );
        
        
        BillDetailsModel b = new BillDetailsModel();
        
        b.setConsAP(consAP);
        b.setConsDist(consDist);
        b.setConsGstnAadhar(consGstnAadhar);
        b.setConsName(consName);
        b.setConsState(consState);
        b.setConsStateCode(consStateCode);
        b.setConsTal(consTal);
        b.setInvDate(invDate);
        b.setInvNum(invNum);
        b.setInvState(invState);
        b.setInvStateCode(invStateCode);
        b.setModeOfTx(modeOfTx);
        b.setPlaceOfSupp(placeOfSupp);
        b.setReverseCharge(reverseCharge);
        b.setSuppDate(suppDate);
        b.setVehicleNum(vehicleNum);
        
        
        BillDetailsDao bd = new BillDetailsDao();
        
        bd.save(b);
           

%>
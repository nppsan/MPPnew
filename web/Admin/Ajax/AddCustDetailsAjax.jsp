<%-- 
    Document   : AddCustDetailsAjax
    Created on : Jan 11, 2021, 10:21:46 PM
    Author     : npp
--%>

<%@page import="Com.Admin.Dao.CustDetailsDao"%>
<%@page import="Com.Admin.Model.CustDetailsModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
           String mobile=request.getParameter("cmobile"); 
           int invNum= Integer.parseInt(request.getParameter("innumber")); 
           String email=request.getParameter("cemail");
           String custName=request.getParameter("cname");
           String addrAP=request.getParameter("cap");
           String addrTal=request.getParameter("ctal");
           String addrDist=request.getParameter("cdist");
           String gstnAadhar=request.getParameter("cgstaadhar");
           String addrState=request.getParameter("cstate");
           int stateCode= Integer.parseInt(request.getParameter("cstcode"));

           
           
           System.out.println("/AddCustDetailsServelet");
           System.out.println("Invoice Numb" + invNum);
           System.out.println("Customer Name "+ custName );
           
           CustDetailsModel p = new CustDetailsModel();
            
           p.setAddrAP(addrAP);
           p.setAddrDist(addrDist);
           p.setAddrState(addrState);
           p.setAddrTal(addrTal);
           p.setCustName(custName);
           p.setEmail(email);
           p.setGstnAadhar(gstnAadhar);
           p.setInvNum(invNum);
           p.setMobile(mobile);
           p.setStateCode(stateCode);
            
           CustDetailsDao pd = new CustDetailsDao();
           
           boolean temp = false;
            temp = pd.save(p);
            if (temp) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Customer Details saved Sucessfully  !!');");
                out.println("location='Admin/Bill.jsp';");
                out.println("</script>");
//                response.sendRedirect("register.jsp");
                
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Category not save !!');");
                out.println("location='Admin/AddProduct.jsp';");
                out.println("</script>");
//                response.sendRedirect("register.jsp");
       
            }
%>
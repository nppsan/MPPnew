<%-- 
    Document   : DeleteCartAjax
    Created on : Jan 14, 2021, 5:58:51 AM
    Author     : npp
--%>

<%@page import="Com.Admin.Dao.SaleProductDao"%>
<%@page import="java.util.List"%>
<%@page import="Com.Admin.Dao.CartDao"%>
<%@page import="Com.Admin.Model.CartModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
// 
//            invNum pname prate quant amt disco    
        long id = Long.parseLong(request.getParameter("MemId"));
        
        System.out.println(id);
        
        CartDao cd = new CartDao();
        
        cd.Delete(id);
        
        SaleProductDao spd = new SaleProductDao();
        
        spd.Delete(id);
        
        
        
  
        
%>
<table  width="100%">
    <th ></th>
    <th style="text-align: center">Product Name</th>
    <th style="text-align: center">SAC CODE</th>
    <th style="text-align: right">Rate</th>
    <th style="text-align: right">Quantity</th>
    <th style="text-align: right">Discount</th>
    <th style="text-align: right">Amount</th>
    <th hidden=""></th>
<%        
        List<CartModel> cm = new CartDao().getAll();
        for(CartModel p:cm)
        {
%>
<tr>
    <td>                                  <span hidden="" ><%=p.getId()%>:- </span></td>
    <td style="text-align: center">       <span style="margin-left:4%"><%=p.getPname()%> </span></td>
    <td style="text-align: center">       <span style="margin-left:4%"><%=p.getSac()%> </span></td>
    <td style="text-align: right">        <span style="margin-left:4%"><%=p.getPrate()%></span></td>
    <td style="text-align: right">        <span style="margin-left:4%"><%=p.getQuant()%></span></td>
    <td style="text-align: right">        <span style="margin-left:4%"><%=p.getDisco()%></span></td>
    <td style="text-align: right">        <span style="margin-left:4%"><%=p.getAmt()%></span></td>
    <td style="text-align: right">        <span class="cart deleteID ti-trash" id="<%=p.getId()%>" style="color: #b41d1d"> </span> </td>
</tr>                
<%
        }
                                        
%>     
</table>
<button id="cnfcartbtn" class="btn btn-primary shadow-primary px-5" style="float: right; margin-top: 10%" > <i class="icon-lock"></i>CONFIRM CART</button>
 <script>                                         
       $('#document').ready(function() {
//                    alert("ok");
                  $('.deleteID').click(function() {
                    
//deelteID
                    var MemId = this.id;
//                     alert("ffff"+MemId);

//                    $('.myid').click(function() {
//
                        $.get("Ajax/DeleteCartAjax.jsp", {MemId: MemId}, function(data) {
                            $('#cart').html(data);
//                           alert("ok1"); 
                        });
//                    });
//                    alert("mem" + MemId);

//                  window.location.reload();
                }); 
             
            });  
  </script>
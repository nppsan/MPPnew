<%-- 
    Document   : AddShowCart
    Created on : Jan 14, 2021, 2:59:54 AM
    Author     : npp
--%>

<%@page import="Com.Admin.Dao.SalesDao"%>
<%@page import="Com.Admin.Model.SalesModel"%>
<%@page import="Com.Admin.Dao.SaleProductDao"%>
<%@page import="Com.Admin.Model.SaleProductModel"%>
<%@page import="java.util.List"%>
<%@page import="Com.Admin.Dao.CartDao"%>
<%@page import="Com.Admin.Model.CartModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>   

<script src="../../Admin/js/Alertajax.js" type="text/javascript"></script>

<%
// 
//            invNum pname prate quant amt disco    
        int invNum = Integer.parseInt(request.getParameter("invNum"));
        String pname = request.getParameter("pname");
        float prate = Float.parseFloat(request.getParameter("prate"));
        float quant = Float.parseFloat(request.getParameter("quant"));
        int sac = Integer.parseInt(request.getParameter("sac"));
        float amt = Float.parseFloat(request.getParameter("amt"));
        float disco = Float.parseFloat(request.getParameter("disco"));
        
        
//        System.out.println("/AddShowCartAjax");
//        System.out.println("ajax page" + invNum);
//        System.out.println("Invoice Numb " + invNum);
//        System.out.println("Product Name " + pname );
        
        
        CartModel c = new CartModel();
        
        c.setAmt(amt);
        c.setDisco(disco);
        c.setInvNum(invNum);
        c.setPname(pname);
        c.setPrate(prate);
        c.setQuant(quant);
        c.setSac(sac);
  
        CartDao cd = new CartDao();
        
        cd.save(c);
        
//        SaleProductModel sp = new SaleProductModel();
//        SalesModel sm = new SalesModel();
//        
//        //sm.setInvNum(invNum);
//        
//        sp.setAmt(amt);
//        sp.setDisco(disco);
//        sp.setInvNum(invNum);
//        sp.setPname(pname);
//        sp.setPrate(prate);
//        sp.setQuant(quant);
//        sp.setSac(sac);
//        //sp.setSalesmodel(sm);
//        
//        SaleProductDao spd = new SaleProductDao();
//        SalesDao sd = new SalesDao();
//        sd.save(sm);
//        spd.save(sp);
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
<!--                                              <div class="icon-container">
                                                <span class="ti-trash"></span>
                                              </div>-->
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
            
//            $('#document').ready(function() {
////  
//            $('#cnfcartbtn').click(function() {
//
//                        
//            });
//        });
        
        $('#document').ready(function() {
  
            $('#cnfcartbtn').click(function() {
//                   alert('confirm cart clicked');
                

                $.ajax({
                    url: "Ajax/FinalCartAjax.jsp",
                    type: "post",
                    data: {},
                    complete: function(jqXHR, textStatus) {

                    },
//                    $(document).ajaxStart(function() {
//                        alert("Start");
//                    });
                    success: function(response) {
//                        alert('hi112')
//                        $(".loader").hide();
                        //$("#tb2").hide();
                        //$("#form1").show(); invNum pname prate quant amt disco
                        var url = 'Invoice.jsp';
                        $(location).prop('href', url);
                        
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.log(textStatus, errorThrown);
                        alert("Something Went Wrong...!!!");
                    }
                    });


                });
            });
     </script>


<%@page import="java.text.DecimalFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title> GST Invoice </title>
        <style>
            body
            {
                font-size:12px;
            }
        </style>

        <style type="text/css" media="print">
            @page {
                /*                size: auto;    auto is the initial value */

                margin-top: 15px;

                margin-right:   5px;
                margin-left: 5px;
                margin-bottom: 5px;
            }
        </style> 


        <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!--<link href="../vendors/bootstrap/dist/css/myNewCss.css" rel="stylesheet">-->
        <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">


        <link href="../build/css/custom.min.css" rel="stylesheet">
    <style>
        .Allborder{
            border-bottom: 1px solid;
            border-left: 1px solid;
            border-right: 1px solid;
            border-top: 1px solid;
        }
        .Sideborder{
            border-left: 1px solid;
            border-right: 1px solid;
        }
        .Hiddenborder{
            border-bottom: 1px solid white;
            border-left: 1px solid;
            border-right: 1px solid;
            border-top: 1px solid white; 
        }
        .Bottomsideborder{
            border-bottom: 1px solid;
        }
        .Topsideborder{
            border-top: 1px solid;
        }

        @media print {
            .backcolor {
                background-color: #FFF5EE !important;
                -webkit-print-color-adjust: exact; 
            }}
        </style>
        <style>
            .table_borderr
            {
                border-right: 1px solid; 
                border-bottom: 1px solid;
                text-align: center;
            }
        </style>
    </head>

    <%

        String saleid = request.getParameter("SaleId");
        //long SaleId = Long.parseLong(saleid);
        System.out.println("SaleId== PQRST253696" );
        // session.removeAttribute("printSaleID");
       // Sale sale = new Sale();
       // SaleDao sal = new SaleDao();
       // Sale S = sal.getSaleByID(SaleId);

    %>
    
        <body class="nav-md" onload="window.print()" style="font-size:11px;">

        <div class="container body"  >
            <div class="main_container" style="" >

                <div role="main">
                    <div class="">          
                        <div class="clearfix"></div>
                        <div class="row">
                            <div class="col-md-12" >
                                <div class="x_panel">
                                    <div class="x_title" style="border-bottom: none;">  

                                        <div class="col-md-4 " style="width: 30%">
                                            <!--<img src="Admin/MyImg/signup1.jpeg" width="180" height="130" border="0" style="padding-top: 10px;float:right"/>-->
                                        </div>
                                        <div class="col-md-8 " style="">
                                            <h1 style="text-align:center; font-family: -webkit-body;padding-top: 20px"><strong>MAHALAXMI POLYMER PRODUCTS</strong></h1>

                                            <div style="text-align: center;color: darkgoldenrod ;font-size: 15px">
                                                <h6><strong>SURVEY NO. 118| GAIKWAD WAREHOUSES</strong></h6>
                                                <h6><strong>NEAR OM LOGISTICS LTD| CHIMBALI| TAL- KHED| DIST. PUNE 410 501| MAHARASHTRA(INDIA)</strong></h6>
                                                <h6><strong>Survey No. 118| Gaikwad Warehouses CHIMBALI, TAL. KHED, DIST. PUNE</strong></h6>
                                                <h6><strong>Email: prafullapatil.audax@gmail.com|<strong> Mobile-9420497501 | TOLL FREE-1800 123 8739 </strong> </strong></h6>                                           
                                                <h5><strong>GSTIN  :27AAZFM0281E1ZO</strong></h5> 
                                            </div>
                                        </div>

                                    </div>

                                    <div class="x_content">
                                        <section class="content invoice">
                                            <div class="row  ">
                                                <table  id="datatable-buttons" class="container-fluid" style="padding-left: 100px; padding-right: 100px; width:100% "> 
                                                    <thead >
                                                        <tr style="padding: 0px;" class="Allborder ">
                                                            <td colspan="8" rowspan="4"   style="text-align: left;padding: 0px" class="table_center Allborder"><font size="3"><ul><li><strong>Name :</strong>Nikhil Patil</li><li><strong>Address:</strong> </li> <li><strong>GSTIN :</strong> 795780583585</li><li><strong>Mobile No :</strong>9970356634 </li></ul></font></td>
                                                            <td colspan="5" width="40%"  style="text-align: left;padding: 0px" class="table_center Allborder"><font size="2" style="padding-left:5px; "><strong>INVOICE NO. TREX/324/466/024 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date : 7-12-20</strong></font>
                                                            </td>

                                                        </tr>
                                                        <tr style="padding: 0px;" class="Allborder ">

                                                            <td colspan="5"  style="text-align: left;padding: 0px" class="table_center Allborder"><font size="2" style="padding-left:5px;">GR No. </font>
                                                            </td>

                                                        </tr>
                                                        <tr style="padding: 0px;" class="Allborder ">

                                                            <td colspan="5"  style="text-align: left;padding: 0px" class="table_center Allborder"><font size="2" style="padding-left:5px;">Vehicle No.</font>
                                                            </td>

                                                        </tr>
                                                        <tr style="">

                                                            <td colspan="5"  style="text-align: left;padding: 0px" class="table_center Allborder"><font size="2" style="padding-left:5px;">Work's Place : Pune</font>
                                                            </td>

                                                        </tr>


                                                    </thead>
                                                    <thead class="backcolor" style="background-color: #FFF5EE ">
                                                        <tr>
                                                            <th rowspan="2" style="text-align: center;padding: 0px;width: 30px;" class="table_center Allborder " >Sr No.</th>
                                                            <th rowspan="2" style="text-align: center;padding: 0px;" class="table_center Allborder">Item Desc</th>
                                                            <th rowspan="2" style="text-align: center;padding: 0px; width: 45px" class="table_center Allborder">HSN </th> 
                                                            <th rowspan="2" style="text-align: center;padding: 0px;width: 25px;" class="table_center Allborder">QTY</th>
                                                            <th rowspan="2" style="text-align: center;padding: 0px; width: 45px;" class="table_center Allborder">UOM</th>
                                                            <th rowspan="2" style="text-align: center;padding: 0px; width: 45px;" class="table_center Allborder">MRP</th>
                                                            <th rowspan="2" style="text-align: center;padding: 0px; width: 55px" class="table_center Allborder">Rate</th>
                                                            <!--                                                            <th rowspan="2" style="text-align: center;padding: 0px" class="table_center">Total Value</th>-->
                                                            <th rowspan="2" style="text-align: center;padding: 0px; width: 55px" class="table_center Allborder">Tax Amt</th>
                                                            <th colspan="2" style="text-align: center;padding: 0px;width: 30px" class="table_center Allborder">SGST</th>
                                                            <th colspan="2" style="text-align: center;padding: 0px; width: 30px" class="table_center Allborder">CGST</th>
                                                            <!--                                                            <th colspan="2" style="text-align: center;padding: 0px; width: 30px" class="table_center">IGST(%)</th>-->
                                                            <th rowspan="2" style="text-align: center;padding: 0px; width: 25px" class="table_center Allborder">Total</th>
                                                        </tr>
                                                        <tr>

                                                            <!--                                                            <th  style="text-align: center;padding: 0px; width: 15px" class="table_center">%</th>
                                                                                                                        <th style="text-align: center;padding: 0px;width: 20px" class="table_center">Amt</th>-->

                                                            <th style="text-align: center;padding: 0px;width: 15px" class="table_center Allborder">%</th>

                                                            <th style="text-align: center;padding: 0px;width: 25px" class="table_center Allborder">Amt</th>
                                                            <th style="text-align: center;padding: 0px;width: 15px" class="table_center Allborder">%</th>
                                                            <th style="text-align: center;padding: 0px;width: 25px" class="table_center Allborder">Amt</th>
                                                            <!--                                                            <th style="text-align: center;padding: 0px;width: 15px" class="table_center">%</th>
                                                                                                                        <th style="text-align: center;padding: 0px;width: 25px" class="table_center">Amt</th>-->


                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                        <%
                                                            int s = 0;
                                                            int q = 0;
                                                            float x = 0;
                                                            float additnlTax = 0;
                                                            float totalBfrTax = 0;
                                                            float GossTotal = 0;
                                                            float GrandSgst = 0;
                                                            float GrandCgst = 0;
                                                            float GrandIgst = 0;
                                                            float addSgst = 0;
                                                            float addCgst = 0;
                                                            float addIgst = 0;
                                                            float totalGst = 0;
                                                            float Final_Discount = 0;
                                                            float Grand_Discount = 0;
//                                                            for (SaleDetails S2 : S.getSaleDetails()) {
//                                                                q++;
//                                                            }

                                                            for (int i=5; i<=0; i--) {
                                                                s++;
                                                                float producttotal = 3005;
                                                                System.out.println("producttotal===" + producttotal);
                                                                long S_Quantity = 212;
                                                                float Sellprice = 518;
                                                                float p = 526;
                                                                float p1 = (float) Math.round(p * 100) / 100;
                                                                float S_Quantity1 = S_Quantity;
                                                                float discount = 10;
                                                                float sellprice = 812;
                                                                float mrpprice = 25;

                                                                x = (p1 * 100) / (100 - discount) * S_Quantity;

                                                                float TotalAmount = S_Quantity1 * p1;
                                                                Final_Discount = mrpprice * discount / 100;
                                                                Grand_Discount = Grand_Discount + Final_Discount;
                                                                GrandSgst = GrandSgst + 1800;
                                                                GrandIgst = GrandIgst + 0;
                                                                GrandCgst = GrandCgst + 1800;

//                                                                SaleTempProduct stp = new SaleTempProduct();

                                                                float taxableAmt = TotalAmount;
                                                                float taxAmnt = (float) Math.round(taxableAmt * 100) / 100;

                                                                float g1 = (p1 * 100) / (100 + 9);
                                                                float g2 = (p1 * 100) / (100 + 9);
                                                                float g3 = (p1 * 100) / (100 + 0);

                                                                float getSgstAmount = 1800;
                                                                float SgstAmnt = (float) Math.round(getSgstAmount * 100) / 100;
                                                                float getCgstAmount = 1800;
                                                                float CgstAmnt = (float) Math.round(getCgstAmount * 100) / 100;
                                                                float getIgstAmount = 0;
                                                                float Total1 = taxAmnt + SgstAmnt + CgstAmnt + getIgstAmount;
                                                                GossTotal = (float) Math.round((GossTotal + Total1) * 100) / 100;

                                                                addSgst = (float) Math.round((addSgst + SgstAmnt) * 100) / 100;
                                                                addCgst = (float) Math.round((addCgst + CgstAmnt) * 100) / 100;
                                                                addIgst = (float) Math.round((addIgst + 0) * 100) / 100;

                                                                totalGst = addSgst + addCgst + addIgst;

                                                                totalBfrTax = totalBfrTax + taxAmnt;

//                                                                 

                                                        %>

                                                        <tr>
                                                            <td style="text-align: center;line-height: 20px " class="table_center Sideborder"><%=s%></td>
                                                            <td style="font-size: 10px;line-height: 20px;padding-left:5px; " class="table_center Sideborder">PIPE</td>
                                                            <td style="text-align: center;line-height: 20px" class="table_center Sideborder">a14ght56</td>                                                              
                                                            <td style="text-align: center;line-height: 20px" class="table_center Sideborder"> 250</td> 
                                                            <td style="text-align: center;line-height: 20px" class="table_center Sideborder"> Foot</td>
                                                            <td style="text-align: center;line-height: 20px" class="table_center Sideborder"> 25</td>
                                                            <%
//float p = S1.getSellPrice();
//float p1 = (float) Math.round(p * 100) / 100;
//String SellPPrice = String.format("%.2f", p);
                                                            %>
                                                            <td style="text-align: center;line-height: 20px" class="table_center Sideborder"><%=p1%></td>
                                                            <%
//                                                                float i = taxableAmt;
//                                                                float kk = (float) Math.round(i * 100) / 100;
//                                                                String taxAmnt = String.format("%.2f", i);
                                                            %>
                                                            <td style="text-align: center;line-height: 20px; background-color: #FFF5EE;" class="table_center backcolor"><%=taxAmnt%></td>                                                              
                                                            <td style="text-align: center" class="table_center Sideborder">1800</td> 
                                                            <td style="text-align: center;line-height: 20px;background-color: #FFF5EE;" class="table_center backcolor"><%=SgstAmnt%></td>

                                                            <td style="text-align: center;line-height: 20px" class="table_center Sideborder">1800</td>
                                                            <td style="text-align: center;line-height: 20px;background-color: #FFF5EE;" class="table_center Sideborder backcolor"><%= CgstAmnt%></td>
                                                            <%
                                                                float i2 = Total1;
                                                                float k = (float) Math.round(i2 * 100) / 100;
                                                                String k1 = String.format("%.2f", i2);
                                                            %>

                                                            <!--                                                            <td style="text-align: center" class="table_center"></td>
                                                                                                                        <td style="text-align: center" class="table_center">//= S1.getIgstAmount() </td>-->
                                                            <td style="text-align: center;line-height: 20px; background-color: #FFF5EE;" class="table_center Sideborder backcolor"><%=k1%></td>

                                                        </tr> 

                                                        <%
                                                            }

                                                            int y = 340;
                                                            if (y > q) {
                                                                y = y - q;
                                                            } else {
                                                                y = 0;
                                                            }
                                                            for (int w = 0; w < y; w++) {
                                                        %>

                                                        <tr class="Hiddenborder">
                                                            <td style="text-align: center;line-height: 20px" class="table_center Hiddenborder"></td>
                                                            <td style="text-align: center;line-height: 20px" class="table_center Hiddenborder"></td>
                                                            <td style="text-align: center;line-height: 20px" class="table_center Hiddenborder"></td>                                                              
                                                            <td style="text-align: center;line-height: 20px" class="table_center Hiddenborder"></td> 
                                                            <td style="text-align: center;line-height: 20px" class="table_center Hiddenborder"></td>

                                                            <td style="text-align: center;line-height: 20px" class="table_center Hiddenborder"></td>
                                                            <td style="text-align: center;line-height: 20px" class="table_center Hiddenborder"></td>
                                                            <td style="text-align: center;line-height: 20px;background-color: #FFF5EE;" class="table_center Hiddenborder backcolor"></td>
                                                            <td style="text-align: center;line-height: 20px" class="table_center"></td>
                                                            <td style="text-align: center;line-height: 20px;background-color: #FFF5EE;" class="table_center Hiddenborder backcolor"></td>                                                              
                                                            <td style="text-align: center;line-height: 20px" class="table_center"></td> 
                                                            <td style="text-align: center;line-height: 20px;background-color: #FFF5EE;" class="table_center Hiddenborder backcolor"></td>

                                                            <td style="text-align: center;line-height: 20px;background-color: #FFF5EE;" class="table_center Hiddenborder backcolor"></td>
                                                            <!--                                                            <td style="text-align: center" class="table_center"></td>-->


                                                            <!--                                                            <td style="text-align: center" class="table_center"></td>
                                                                                                                        <td style="text-align: center" class="table_center"></td>-->

                                                        </tr>

                                                        <%
                                                            }%>


                                                        <tr class="" style="border-top-style:solid">
                                                            <td colspan="8" rowspan="5"  style="text-align: left;line-height: 20px;padding: 0px" class="table_center Sideborder  "><font size="2" style="padding-left:5px;"><strong>Terms & Condition: </strong><ul><li>All payments to be made in ADVANCE.</li> <li>2% interest Per Month will be charged on all outstanding amount thereafter.</li><li>Make all Cheques/DD/RTGS/NEFT payable to MAHALAXMI POLYMER PRODUCTS.</li><li>If you have any queries concerning this invoice, contact us with above details.</li></ul></td>
                                                            <td colspan="5"  style="text-align: left ;line-height: 20px;padding: 0px" class="table_center Sideborder "><font size="2" style="padding-left:5px;">Total Amount Before Tax :&nbsp;&nbsp;  <%= totalBfrTax%> </font>
                                                            </td>

                                                        </tr>
                                                        <tr style="" class="Sideborder ">

                                                            <td colspan="5"  style="text-align: left ;line-height: 20px;padding: 0px" class="table_center Sideborder"><font size="2" style="padding-left:5px;">Add: SGST &nbsp;&nbsp;  <%= addSgst%>  </font>
                                                            </td>

                                                        </tr>
                                                        <tr style="" class="Sideborder ">

                                                            <td colspan="5"  style="text-align: left ;line-height: 20px;padding: 0px" class="table_center Sideborder"><font size="2" style="padding-left:5px;">Add: CGST &nbsp;&nbsp; <%= addCgst%></font>
                                                            </td>

                                                        </tr>
                                                        <tr style="" class="Sideborder ">

                                                            <td colspan="5"  style="text-align: left ;line-height: 20px;padding: 0px" class="table_center Sideborder"><font size="2" style="padding-left:5px;">Add: IGST &nbsp;&nbsp; <%= addIgst%></font>
                                                            </td>

                                                        </tr>
                                                        <tr style="" class="Sideborder ">

                                                            <td colspan="5" style="text-align: left ;line-height: 20px;padding: 0px" class="table_center Sideborder"><font size="2" style="padding-left:5px;">Add: Additional Tax : &nbsp;&nbsp; <%= additnlTax%></font>
                                                            </td>

                                                        </tr>

                                                        <tr style="" class="Sideborder ">
                                                            <td colspan="8" rowspan="3"  style="text-align: left;line-height: 20px;padding: 0px" class="table_center Sideborder"><font size="2"><strong><ul></ul><ul>THANK YOU FOR BUSINESS WITH US</ul></strong></td> 
                                                            <td colspan="5"  style="text-align: left;line-height: 20px;padding: 0px" class="table_center Sideborder backcolor"><font size="2" style="padding-left:5px;"><strong>Total Tax Amount : GST     <%= totalGst%></strong></font>
                                                            </td>

                                                        </tr>
                                                        <tr style="" class="Sideborder ">

                                                            <td colspan="5"  style="text-align: left ;line-height: 20px;padding: 0px" class="table_center Sideborder backcolor"><font size="2" style="padding-left:5px;"><strong>Total Amount After Tax :&nbsp;&nbsp;  <%= GossTotal%></strong></font>
                                                            </td>

                                                        </tr>
                                                        <%
                                                            float Gross_roundoff = Math.round(GossTotal);
                                                            float a = Gross_roundoff - GossTotal;
                                                            System.out.println("a======" + a);
                                                            float ro = (float) Math.round(a * 100) / 100;

                                                        %>
                                                        <tr style="" class="Sideborder ">

                                                            <td colspan="7"  style="text-align: left ;line-height: 20px;padding: 0px" class="table_center Sideborder"><font size="2" style="padding-left:5px;">Round Off :&nbsp;&nbsp; <%=ro%></font>
                                                            </td>

                                                        </tr>                                                      
                                                        <tr style="" class="Sideborder ">
                                                            <td colspan="8" rowspan="1"  style="text-align: left ;line-height: 20px;background-color: #FFF5EE;" class="table_center Sideborder Bottomsideborder backcolor"><font size="3" style="padding-left:5px;">Total In Words: Three Thousand One Hundred fifty Rs.only </font></td>
                                                            <td colspan="5"  style="text-align: left ;line-height: 20px;background-color: #FFF5EE;" class="table_center Sideborder Bottomsideborder backcolor"><font size="3" style="padding-left:5px;"><strong>GRAND TOTAL :&nbsp;&nbsp; 3,150.00 <%= Gross_roundoff%></strong></font>
                                                            </td>

                                                        </tr>
                                                    </tbody>                                                   
                                                </table>
                                            </div>
                                            <!-- /.row -->
                                            <div class="row Sideborder Bottomsideborder">
                                                <div style="height: 110px; margin-left: 10%  ">
                                                    <div class="col-md-4" style="color: darkgoldenrod; padding-top: 20px; ">
                                                        <h4 style="margin-left:30px  ">Received By</h4>
                                                    </div>
                                                    <div class="col-md-4" style="color: darkgoldenrod; padding-top: 20px;">
                                                        <h4 style="margin-left:160px  "> </h4>
                                                    </div>
                                                    <div class="col-md-4" style="color: darkgoldenrod; padding-top: 20px;">
                                                        <h4 style="margin-left:70px  "> For Mahalaxmi Polymer Products </h4>
                                                    </div>

                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->

                <!-- /footer content -->

            </div>
        </div>                                                    
        
        <!-- jQuery -->
        <script src="../vendors/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="../vendors/fastclick/lib/fastclick.js"></script>
        <!-- NProgress -->
        <script src="../vendors/nprogress/nprogress.js"></script>

        <!-- Custom Theme Scripts -->
        <script src="../build/js/custom.min.js"></script>
    </body>  
</html>
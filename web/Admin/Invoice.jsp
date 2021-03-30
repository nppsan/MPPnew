<%@page import="Com.Admin.Dao.SalesDao"%>
<%@page import="Com.Admin.Model.SalesModel"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.math.RoundingMode"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Com.Admin.Dao.SaleProductDao"%>
<%@page import="Com.Admin.Model.SaleProductModel"%>
<%@page import="Com.Admin.Dao.CartDao"%>
<%@page import="Com.Admin.Model.CartModel"%>
<%@page import="Com.Admin.Dao.BillDetailsDao"%>
<%@page import="Com.Admin.Model.BillDetailsModel"%>
<%@page import="Com.Admin.Dao.CustDetailsDao"%>
<%@page import="Com.Admin.Model.CustDetailsModel"%>
<%@page import="java.util.List"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<%@include file="Title.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Muli:wght@200;300;400;500;700&display=swap" rel="stylesheet">
<style type="text/css">
   .print
   {
           
	   width:140px;
	   height:35px;
	   line-height:32px;
	   text-align:center;
	   border:none;
	   border-radius:20px;
	   background:#f60;
	   margin-bottom:20px;
	   cursor:pointer;
	   color:#fff;
	   font-family: 'Muli', sans-serif;
   }
   .goback
   {
           
	   width:140px;
	   height:35px;
	   line-height:32px;
	   text-align:center;
	   border:none;
	   border-radius:20px;
	   background:#0044cc;
	   margin-bottom:20px;
	   cursor:pointer;
	   color:#fff;
	   font-family: 'Muli', sans-serif;
   }
</style>
<style>
    .vertical-line{
        width:1px;
        height:200px;
        background-color:black;
    }
    
</style>

 
  <script> 
        function printDiv() { 
            var divContents = document.getElementById("panel").innerHTML; 
            var a = window.open('', '', 'height=1200, width=800'); 

            a.document.write(divContents); 
            a.document.close(); 
            a.print(); 
        } 
        function goBack(){
            window.location = "../Admin/AdminHome.jsp"
        }
    </script> 
<script src="js/toword.js"></script>


</head>

<body>
    
    <%
//        List<CustDetailsModel> s2 = new CustDetailsDao().getAll();
//        int max=s2.size();
//        CustDetailsModel cd1 = new CustDetailsModel();
//        cd1=s2.get(max-1);
//        int inv = cd1.getInvNum();
//        System.out.println(""+inv);
        //inv+=1;
//        System.out.println("inv number"+request.getParameter("innumber"));
//        int inv = Integer.parseInt(request.getParameter("innumber"));
//        System.out.println(""+inv);
        List<SalesModel> s2 = new SalesDao().getAll();
            int max = s2.size();
            int inv;
            if (max == 0) {
                inv = 1000;
            } else {
                SalesModel cd = new SalesModel();
                cd = s2.get(max - 1);
                inv = cd.getInvNum();
            }
//            inv += 1;
            System.out.println(""+inv);
    %>
    <%
        SalesModel sm = new SalesDao().getByNaturalId(inv);
        CustDetailsDao cd = new CustDetailsDao();
        CustDetailsModel cm = cd.getById(sm.getCid());
        
        
        BillDetailsDao bd = new BillDetailsDao();
        BillDetailsModel bm = bd.getByNaturalId(inv);
        System.out.println(bm.getModeOfTx());
        //System.out.println(bm.getModeOfTx());
       // bm.getModeOfTx();
       // List<CustDetailsModel> cd = new CustDetailsDao().getAll();
       // List<BillDetailsModel> bd = new BillDetailsDao().getAll();
        
    %>
    
    <div onclick="printDiv()" class="print">Print Invoice</div>
    <div onclick="goBack()" class="goback">GO BACK</div>


<div id="panel">
    <h2 align="center">MAHALAXMI POLYMER PRODUCTS</h2>
<pre style="font-size: 12px; text-align:center; font-family: 'Muli', sans-serif;"> 
     SURVEY NO.118|GAIKWAD WAREHOUSES
     NEAR OM LOGISTICS LTD| CHIMBALI | TAL-KHED | DIST-PUNE 410501 | MAHARASHTRA(INDIA)
     Email:prafullapatil.audax@gmail.com | +91 9420497501 | TOLL FREE-1800 123 8739 </pre>
<pre style="font-size: 12px; text-align:center; font-family: 'Muli', sans-serif;"><strong> GSTIN:27AAZFM0281E1Z0 </strong> </pre>
<table style="border:none ; padding: 50px, 50px, 50px, 50px"  width="100%" border="0" cellpadding="0" cellspacing="0" class="tb">
  <tbody>
    <tr>
      <td height="35" colspan="4" align="center" class="txt" style="border-bottom:1px solid #ddd; color:#d04e00; font-weight:800; font-family: 'Muli', sans-serif;">Tax-Invoice</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
<!--        <tbody>
          <tr>
            <td height="49" valign="bottom" style=" font-size:20px; color:#d04e00; font-weight:800; font-family: 'Muli', sans-serif;">HTML Invoice Templates</td>
            </tr>
          <tr>
            <td style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;" >GSTIN : JJSASJJJJKKJ11111, </td>
            </tr>
          <tr>
            <td style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Pan No : AA444111FFFF</td>
            </tr>
          <tr>
            <td style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Office : Address here</td>
            </tr>
          <tr>
            <td style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Email.email@example.com, Website. www.example.com</td>
            </tr>
        </tbody>-->

                    <!--Start-->
                     <tr>
      <td height="36" colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td width="3%">&nbsp;</td>
      <td colspan="2"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="tb1">
        <tbody>
          <tr>
            <td><table style="border:1px solid #999999;" width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody>
                <tr>
                  <td width="16%" height="25"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Invoice No. </span></strong></td>
                  <td width="49%"><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">T-REX/MPP/<%=inv%></span></td>
                  <td width="20%"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Model of Transport</span></strong></td>
                  <td width="15%"><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=bm.getModeOfTx()%></span></td>
                </tr>
                <tr>
                  <td width="15%"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Invoice Date</span></strong></td>
                  <td width="15%"><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=bm.getInvDate()%></span></td>
                  <td width="20%"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Vehicle No.</span></strong></td>
                  <td width="15%"><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=bm.getVehicleNum()%></span></td>
                </tr>
                
                <tr>
                  <td width="15%"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Reverse Charge</span></strong></td>
                  <td width="15%"><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=bm.getReverseCharge()%></span></td>
                  <td width="15%"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Date of Supply</span></strong></td>
                  <td width="15%"><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=bm.getSuppDate()%></span></td>
                </tr>
                <tr>
                  <td height="25"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">State</span></strong></td>
                  <td><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=bm.getInvState()%></span></td>
                  <td><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Place of Supply</span></strong></td>
                  <td><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=bm.getPlaceOfSupp()%></span></td>
                </tr>
<!--                <tr>
                  <td height="25"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">GSTIN</span></strong></td>
                  <td><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">0748MJKKLLL***</span></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>-->
              </tbody>
            </table></td>
          </tr>
                    <!--end-->



      </table></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td height="36" colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td width="3%">&nbsp;</td>
      <td colspan="2"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="tb1">
        <tbody>
          <tr>
            <td><table style="border:1px solid #999999;" width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody>
                <tr>
                  <td width="16%" height="25"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Client Name </span></strong></td>
                  <td width="49%"><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=cm.getCustName()%></span></td>
                  <td width="20%"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">At Post</span></strong></td>
                  <td width="15%"><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=cm.getAddrAP()%></span></td>
                </tr>
                <tr>
                  <td height="25"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">Taluka</span></strong></td>
                  <td><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=cm.getAddrTal()%></span></td>
                  <td><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">District</span></strong></td>
                  <td><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=cm.getAddrDist()%></span></td>
                </tr>
                <tr>
                  <td height="25"><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">GSTIN/ADHAR NO.</span></strong></td>
                  <td><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=cm.getGstnAadhar()%></span></td>
                  <td><strong><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">State</span></strong></td>
                  <td><span style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;"><%=cm.getAddrState()%></span></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
          <tr>
            <td height="31" style="border-top:1px solid #999999;">&nbsp;</td>
          </tr>
          <tr>
            <td> <table style="border:1px solid #999999;" width="100%" border="1" cellpadding="0" cellspacing="0" class="tb2">
              <tbody>
                  
                <tr style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">
                  <td  rowspan="2" width="1%" height="30" align="center"><strong>S.N</strong></td>
                  <td  rowspan="2" width="15%" align="center"><strong>Description of Goods </strong></td>
                  <td  rowspan="2" width="8%" align="center"><strong>SAC Code </strong></td>
                  <td  rowspan="2" width="4%" align="center"><strong>QTY (Sq.Mt.) </strong></td>
                  <td  rowspan="2" width="6%" align="center"><strong>Rate (/Sq.Mt.)</strong></td>
                  <td  rowspan="2" width="8%" align="center"><strong>Amount (Rs.)</strong></td>
                  <td  rowspan="2" width="3%" align="center"><strong>Less Disc. (%) </strong></td>
                  <td  rowspan="2" width="10%" align="center"><strong>Taxable Amount (Rs.)</strong></td>
                  <td  colspan="2" width="10%" align="center"><strong>CGST </strong></td>
                  <td  colspan="2" width="10%" align="center"><strong>SGST </strong></td>
                  <td  colspan="2" width="10%" align="center"><strong>IGST </strong></td>
                  <td  rowspan="2" width="15%" align="center"><strong>Total (Rs.)</strong></td>
                </tr>
                <tr>
                    <td align="center">Rate (%)</td>
                    <td align="center">Amount (Rs.)</td>
                    <td align="center">Rate (%)</td>
                    <td align="center">Amount (Rs.)</td>
                    <td align="center">Rate (%)</td>
                    <td align="center">Amount (Rs.)</td>
                    
                    
                </tr>
                
                <!--products start-->
<%        
                List<CartModel> sp = new CartDao().getAll();
                int i=0;
                float gTotal = 0.00f;
                float total = 0.00f;
                float tCgst = 0.00f;
                
                
                for(CartModel p:sp)
                {
                    i++;
                    float beforeTaxAmtPerProduct = p.getPrate() * p.getQuant();
                    float taxableAmtAfterDisco = beforeTaxAmtPerProduct - (beforeTaxAmtPerProduct * p.getDisco())/100;
                    float amtOfGST =  (taxableAmtAfterDisco * 9/100);
                        DecimalFormat df = new DecimalFormat();
                        df.setMaximumFractionDigits(1);
                    float formatamtOfGST = Float.parseFloat(df.format(amtOfGST));    
                        System.out.println("df format"+df.format(amtOfGST));
                        System.out.println("df format"+formatamtOfGST); 
//                        System.out.printf("%.2f", amtOfGST);
                    float totalAmtAfterTaxes = taxableAmtAfterDisco + amtOfGST*2;
                    total = total + taxableAmtAfterDisco;
                    gTotal = gTotal + totalAmtAfterTaxes;
                    tCgst = tCgst + amtOfGST;
                    
                    System.out.println(gTotal);
%>
                <tr style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">
                  <td height="30" align="center"><%=i%>.</td>
                  <td align="center"><%=p.getPname()%></td>
                  <td align="center"><%=p.getSac()%></td>
                  <td align="center"><%=p.getQuant()%></td>
                  <td align="center"><%=p.getPrate()%></td>
                  <td align="center"><%=beforeTaxAmtPerProduct%></td>
                  <td align="center"><%=p.getDisco()%></td>
                  <td align="center"><%=taxableAmtAfterDisco%></td>
                  <td align="center">9</td>
                  <td align="center"><%=amtOfGST%></td>
                  <td align="center">9</td>
                  <td align="center"><%=amtOfGST%></td>
                  <td align="center">0</td>
                  <td align="center">0</td>
                  <td align="center"><%=totalAmtAfterTaxes%></td>
                  
                </tr>
<%
                }
                                        
%>     
                <!--products end-->
              

              </tbody>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
              <td><table style="color:#000;font-size:13px;font-family: 'Muli', sans-serif;" width="100%" border="1" cellpadding="0" cellspacing="0" class="tb2">
              <tbody>
              
                  <tr>
                      <td>&nbsp;</td>
                      <td style="height: 32px"> &nbsp;&nbsp; Total Amount before Tax  (Rs.) </td>
                      <td align="center" style="height: 32px"><%=total%></td>
                  </tr>
                  
                  
                  
                  <tr>
                      <td id="aiw" rowspan="5">Total Invoice Amount (in words):- Rupees <span id="words"></span></td>
                      <td style="height: 32px"> &nbsp;&nbsp; Total Amount of CGST  (Rs.)</td>
                      
                      <td align="center" style="height: 32px"><%=tCgst%></td>
                      
                  </tr>
              
                  <tr>
                      <!--<td rowspan="2" style="padding:3px 50px 5px 10px">Total Invoice Amount (in words)</td>-->
                      <td style="height: 32px"> &nbsp;&nbsp; Total Amount of SGST  (Rs.)</td>
                      <td align="center" style="height: 32px"><%=tCgst%></td>
                  </tr>
            
                  <tr style="height: 32px">
                     
                      <td > &nbsp;&nbsp; Total Amount of IGST  (Rs.)</td>
                      <td align="center">0.0</td>
                  </tr>
                  <tr style="height: 32px">
                     
                      <td > &nbsp;&nbsp; Total Tax Amount:GST  (Rs.)</td>
                      <td align="center"><%=tCgst*2%></td>
                  </tr>
                  <tr style="height: 32px">
                     
                      <td > &nbsp;&nbsp; Total Amount After TAX  (Rs.)</td>
                      <td align="center"><%=gTotal%></td>
                  </tr>
<%
                    int gTIW = (int)gTotal;
                    System.out.println(gTIW);
%>                  
              
                <tr style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">
                  <!--<td width="7%" height="48" align="center">&nbsp;</td>-->
                        <span id="conv" hidden=""><%=gTIW%></span>
                        
                        <!--<input id="number" type="text" />-->
                  <!--<td width="15%" style="height:90px" align="left"></td>-->
                  
                  <!--<td align="center">Add CGST :<hr><br>Add SGST :<hr style="height: 5px"><br>Add IGST:</td>-->
                  
                  <!--<td width="13%" align="center">&nbsp;</td>-->
                
                </tr>
                <tr style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;">
                    <td height="70">&nbsp;
                      
                        <pre style="font-size: 10px; text-align:left; font-family: 'Muli', sans-serif;">All payments to be made in ADVANCE.
2% interest per month will be charged on all outstanding amount thereafter.
Make all Cheques/DD/RTGS/NEFT payable to MAHALAXMI POLYMER PRODUCTS
If you have any query concerning this invoice, contact us with above details.
                      </pre>
                      <h4> THANK YOU FOR DOING BUSINESS WITH US!</h4>
                      <h6>#This is the computer generated invoice needs no stamp or signature.</h6>
                  </td>
                  <td align="center"><strong>Grand Total</strong></td>
                  <td align="center" style="width: 150px"><strong><%=gTotal%></strong></td>
                  <!--<td align="center">&nbsp;</td>-->
                </tr>
              </tbody>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </tbody>
      </table></td>
      <td width="3%">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td height="32">&nbsp;</td>
      <td style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;" width="47%" height="32"><strong>Date : <span id="date" ></span></strong></td>
      <!--<td style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;" width="47%" align="right"><strong>For : Online Reciept</strong></td>-->
      <td height="32">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td height="72">&nbsp;</td>
      <td>&nbsp;</td>
      <!--<td style=" font-size:13px; color:#000; padding:5px; font-family: 'Muli', sans-serif;" align="right" valign="bottom"><strong>Authorised Signature</strong></td>-->
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4">&nbsp;</td>
    </tr>
  </tbody>
</table>
</div>
                    <script src="assets/js/jquery.min.js"></script>
                    <script src="assets/js/popper.min.js"></script>
                    <script src="assets/js/bootstrap.min.js"></script>
                  <script>

                
                    $('#document').ready(function() {
                        var i = document.getElementById("conv").innerHTML;
                        var w = inw(i); 
                        document.getElementById("words").innerHTML= w;
                    });
                var today = new Date();
                var dd = String(today.getDate()).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();

                today = dd + '/' + mm + '/' + yyyy;
                document.getElementById("date").innerHTML= today;
                  </script>
</body>
</html>


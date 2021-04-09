<%-- 
    Document   : GetSalesAjax
    Created on : 27 Mar, 2021, 1:29:09 AM
    Author     : NPP
--%>

<%@page import="Com.Admin.Dao.CustDetailsDao"%>
<%@page import="Com.Admin.Model.CustDetailsModel"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Com.Admin.Model.SalesModel"%>
<%@page import="java.util.List"%>
<%@page import="Com.Admin.Dao.SalesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String fromdate = request.getParameter("fromdate");
    String todate1 = request.getParameter("todate");
//    System.out.println(fromdate);
//    System.out.println(todate1);
    DecimalFormat df = new DecimalFormat();
    df.setMaximumFractionDigits(1);

    List<SalesModel> saleList = new SalesDao().queryList(fromdate, todate1);

    Iterator<SalesModel> itObjectForList = saleList.iterator();
    while (itObjectForList.hasNext()) {
        System.out.println(itObjectForList.next());
    }

    System.out.println("After converting into set ----");

    Set<SalesModel> set = new HashSet<SalesModel>(saleList);
    Iterator<SalesModel> itObjectForSet = set.iterator();

    List<SalesModel> finalList = new ArrayList<SalesModel>(set);

    while (itObjectForSet.hasNext()) {
        System.out.println(itObjectForSet.next());
//                        finalList.add(itObjectForSet.next());
    }
//    SELECT * FROM mpp.salesmodel s WHERE invDate BETWEEN "2021-03-26" AND "2021-03-27";
%>
<div id='div-btn'>
    <table id="sales" class="table table-bordered" style="text-align: center; width: available">
        <thead>
            <tr>
                <th>#</th>
                <th>Customer Name</th>
<!--                <th>Bill ID</th>-->


                <th>Invoice Date</th>
                <th>Invoice Number</th>
                <th style="text-align: right">Sale Amount</th>
                <th>Action</th>

            </tr>
        </thead>
        <tbody>

            <%
                int i2 = 1;
                float total = 0;
                CustDetailsModel cdm = new CustDetailsModel();
                CustDetailsDao cdd = new CustDetailsDao();
                for (SalesModel h5 : finalList) {
            %>
            <tr>
                <td><%=i2%></td>
                <%
                    cdm = cdd.getById(h5.getCid());
                %>
                <td><%=cdm.getCustName() %></td>
                
<%
            String invDate = h5.getInvDate();
            String yyyy = invDate.substring(0, 4);
            String mm = invDate.substring(5,7 );
            String dd = invDate.substring(8, 10);
%>
                <td><%=dd+"-"+mm+"-"+yyyy%></td>
                <%
                    total = total + h5.getFinalBillAmt();

                %>    

                <td><%=h5.getInvNum()%></td>
                <td style="text-align: right"><%=df.format(h5.getFinalBillAmt())%></td>
                <td><a href="Invoice.jsp?inv=<%=h5.getInvNum()%>" class="getInv" id="<%=h5.getInvNum()%>"><button id="view" type="button" class="btn btn-success waves-effect waves-light m-1">View</button></a></td>

            </tr>     
            <%
                    i2++;
                }


            %>
            <tr></tr>
            <tr>
<!--            <td></td>
                <td></td>-->
                <td></td>
                <td></td>
                <td></td>
                
                <td style="color: whitesmoke; background-color: black">Total</td>
                <td style="color: white; background-color: black"><%=df.format(total)%></td>
                <td></td>
            </tr>


        </tbody>

    </table>
</div>
<script>
    $(document).ready(function() {
        //Default data table
//                $('#tb2').DataTable();


        var table = $('#sales').DataTable({
            lengthChange: false,
            buttons: ['copy', 'excel', 'pdf', 'print', 'colvis']
        });

        table.buttons().container()
                .appendTo('#div-btn');

    });

</script>
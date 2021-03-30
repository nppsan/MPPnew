<%-- 
    Document   : GetSalesAjax
    Created on : 27 Mar, 2021, 1:29:09 AM
    Author     : NPP
--%>

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
    System.out.println(fromdate);
    System.out.println(todate1);
    
    List <SalesModel> saleList = new SalesDao().queryList(fromdate, todate1);
    
    Iterator<SalesModel> itObjectForList = saleList.iterator();
		while (itObjectForList.hasNext()) {
			System.out.println(itObjectForList.next());
		}

		System.out.println("After converting into set ----");

		Set<SalesModel> set = new HashSet<SalesModel>(saleList);
		Iterator<SalesModel> itObjectForSet = set.iterator();
                
                List <SalesModel> finalList = new ArrayList<SalesModel>(set);
                
		while (itObjectForSet.hasNext()) {
			System.out.println(itObjectForSet.next());
//                        finalList.add(itObjectForSet.next());
		}
//    SELECT * FROM mpp.salesmodel s WHERE invDate BETWEEN "2021-03-26" AND "2021-03-27";
%>

<table id="example" class="table table-bordered">
    <thead>
        <tr>
            <td>#</td>
            <th>Customer ID</th>
            <th>Bill ID</th>

            
            <th>Invoice Date</th>
            <th>Invoice Number</th>
            <th>Action</th>


        </tr>
    </thead>
    <tbody>

        <%
            int i2 = 1;
            long diff = 0;
            for (SalesModel h5 : finalList) {
        %>
        <tr>
            <td><%=i2%></td>
            <td><%=h5.getCid()%></td>
            <td><%=h5.getBid()%></td>

            <td><%=h5.getInvDate()%></td>
            <%
                

            %>    

            <td><%=h5.getInvNum()%></td>
            <td><%=diff%></td>
            

        </tr>     
        <%
                i2++;
            }


        %>



    </tbody>

</table>
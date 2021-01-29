<%@page import="Com.Admin.Model.ProductModel"%>
<%@page import="Com.Admin.Dao.ProductDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("username");
    
    System.out.println("inajax" + id);
    
    ProductDao pd = new ProductDao();
    
    ProductModel pm = pd.getById(Long.parseLong(id));
    pm.getRate();
//    invNum pname prate quant amt disco
%>

<div class="col-sm-4">
    <input style="margin-bottom: 13px; margin-left: 55%" type="text" class="form-control" id="prate" value="<%=pm.getRate()%>" readonly="readonly" name="rate">
</div>
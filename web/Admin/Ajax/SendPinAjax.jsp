<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Com.Member.Dao.EPinDao"%>
<%@page import="Com.Member.Model.EPinModel"%>
<%
    String member = request.getParameter("member");
    String Assign = request.getParameter("Assign");

    String eid = "";
    String[] a = Assign.split(",");
    for (int i = 0; i < a.length; i++) {
        eid = a[i];
        EPinModel e = new EPinDao().getById(Long.parseLong(eid));
        e.setEPinGivenTo(Long.parseLong(member));

        Date d = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String ldate = formatter.format(d);

        e.setPinGivenDate(ldate);
        new EPinDao().Update(e);

    }
%>
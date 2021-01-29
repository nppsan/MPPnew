<%@page import="java.text.ParseException"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>

<style>
    td
    {
        font-size:13px;
        padding-left:3px;

    }
    th
    {
        padding-top:5px;
        padding-bottom:5px;
        font-size:12px;
    }
    table.dataTable thead>tr>th.sorting_asc, table.dataTable thead>tr>th.sorting_desc, table.dataTable thead>tr>th.sorting, table.dataTable thead>tr>td.sorting_asc, table.dataTable thead>tr>td.sorting_desc, table.dataTable thead>tr>td.sorting {
        padding-right: 0px;
        opacity: 1px;
    }
    th.sorting_desc
    {
        padding-right: 0px;

    }
    td.sorting_asc
</style>
<%
    String fromdate = request.getParameter("fromdate");
    String todate1 = request.getParameter("todate");
//    String Leadtype = "Future";
////    List<OrderModel> o = new OrderDao().getAllByOderFrom("OnTable");
//    String date8[] = todate1.split("-");
//    String date11 = date8[0];
//    String date12 = date8[1];
//    String date13 = date8[2];
//    int date23 = 0;
//    int year = 0;
//    int month = 0;
//    int day = 0;
//
//    String todate = "";
//    int todate11 = Integer.parseInt(date13) + 1;
//    String tod = Integer.toString(todate11);
//    if (date13.equals("31")) {
//        day = 01;
//        year = Integer.parseInt(date11);
//        if (Integer.parseInt(date12) == 12) {
//            month = 01;
//            year = Integer.parseInt(date11) + 1;
//        } else {
//            month = Integer.parseInt(date12) + 1;
//        }
//
//        todate = year + "-" + month + "-" + day;
//    } else {
//
//        todate = date11 + "-" + date12 + "-" + tod;
//    }
//
//    System.out.println("todate" + tod);
//    System.out.println("todate" + todate);
//    System.out.println("From" + fromdate);

    String query1 = "from MemberModel where RDate  Between '" + fromdate + "' AND '" + todate1 + "'";
    List<MemberModel> Leads = new MemberDao().QueryList(query1);

    int i = 1;
%>




<table id="example" class="table table-bordered">
    <thead>
        <tr>
            <td>#</td>
            <th>userID</th>
            <th>Name</th>

            <th>Mobile Number</th>
            <th>Register Date</th>
            <th>Days Completed</th>
            <th>Action</th>


        </tr>
    </thead>
    <tbody>

        <%
            int i2 = 1;
            long diff = 0;
            for (MemberModel h5 : Leads) {
        %>
        <tr>
            <td><%=i2%></td>
            <td><%=h5.getUsername()%></td>
            <td><%=h5.getName()%></td>

            <td><%=h5.getMObNO()%></td>
            <%
                try {
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                    String dateInString = h5.getRDate();
                    System.out.println(dateInString);
                    Date dateStart = formatter.parse(dateInString);
                    System.out.println(dateStart);

                    Date dateEnd = new Date();

                    //time is always 00:00:00, so rounding should help to ignore the missing hour when going from winter to summer time, as well as the extra hour in the other direction
                    diff = Math.round((dateEnd.getTime() - dateStart.getTime()) / (double) 86400000);
                    System.out.println("Days" + diff);

                } catch (ParseException e) {
                    e.printStackTrace();
                }

            %>    

            <td><%=h5.getRDate()%></td>
            <td><%=diff%></td>
            <td> 
                <a href="UpdateMember.jsp?id=<%=h5.getId()%>" class="btn-sm btn btn-primary shadow-primary btn-round waves-effect waves-light">Edit</a>
                <a target="_blank" href="../UserLoginAdmin?User_ID=<%=h5.getUsername()%>&password=<%=h5.getPassword()%>" class="btn-sm btn btn-primary shadow-primary btn-round waves-effect waves-light">View More</a>

            </td>

        </tr>     
        <%
                i++;
            }


        %>



    </tbody>

</table>




<script>
    $(document).ready(function() {
        //Default data table
        $('#default-datatable').DataTable();


        var table = $('#example').DataTable({
            lengthChange: false,
            buttons: ['copy', 'excel', 'pdf', 'print', 'colvis']
        });

        table.buttons().container()
                .appendTo('#example_wrapper .col-md-6:eq(0)');

    });

</script>
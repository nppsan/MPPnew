<%@page import="java.text.ParseException"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%

    String MemId = request.getParameter("MemId");
//System.out.println("print"+MemId);
    MemberModel g = new MemberDao().getById(Long.parseLong(MemId));

    new MemberDao().Delete(g.getId());

//    int i = 1;
//    HttpSession session1 = request.getSession();
//    session1.setAttribute("i", i);
//    session1.setAttribute("msg", "Delete Sucessfully");
//    response.sendRedirect("Admin/AdminHome.jsp");s
%>


<table id="example" class="table table-bordered">
    <thead>
        <tr>
            <td>#</td>
            <th>userID</th>
            <th>Name</th>

            <th>Mobile Number</th>
            <th>Register Date</th>
            <!--<th> Date</th>-->
            <th>Days Completed</th>
            <th>Action</th>


        </tr>
    </thead>
    <tbody>

        <%                                                    List<MemberModel> h2 = new MemberDao().getAll();
            System.out.println(h2.size());
            int i = 1;
            long diff = 0;
            for (MemberModel h1 : h2) {
        %>
        <tr>
            <td><%=i%></td>
            <td><%=h1.getUsername()%></td>
            <td><%=h1.getName()%></td>


            <td><%=h1.getMObNO()%></td>
            <%
                try {
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                    String dateInString = h1.getRDate();
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

            <td><%=h1.getRDate()%></td>
            <!--<td><%=h1.getId()%></td>-->
            <td><%=diff%></td>
            <td> 

                <a href="UpdateMember.jsp?id=<%=h1.getId()%>" class="btn-sm btn btn-primary shadow-primary btn-round waves-effect waves-light">Edit</a>
                <a target="_blank" href="../UserLoginAdmin?User_ID=<%=h1.getUsername()%>&password=<%=h1.getPassword()%>" class="btn-sm btn btn-primary shadow-primary btn-round waves-effect waves-light">View More</a>
                 <a href="#" id="<%=h1.getId()%>" class="btn-sm btn btn-danger shadow-danger btn-round waves-effect waves-light deleteID" data-toggle="modal" data-target="#modal-animation-10">Delete</a>


                <input type="hidden" value="<%=h1.getId()%>" id="MemId">
            </td>

        </tr>     
        <%
                i++;
            }


        %>



    </tbody>

</table>







<div class="modal  fade" id="ContactModel">
    <div class="modal-dialog ">
        <div class="modal-content border-primary">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white"><i class="fa fa-star"></i>Bank Details</h5>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div id="PayID"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-inverse-primary" data-dismiss="modal"><i class="fa fa-times"></i> OK</button>
            </div>
        </div>
    </div>
</div>                                   





    <script>
            $('document').ready(function() {
                $('.paidbtn').click(function() {
                    var id = this.id;

                    $.get("Ajax/PaidAjax.jsp", {id: id}, function(data) {
                        $('#statusID').html(data);
                    });
                });
                $('.RecvedBtn').click(function() {
                    var id = this.id;
                    $.get("Ajax/RecivedAjax.jsp", {id: id}, function(data) {
                        $('#RecIDSpan').html(data);
                    });
                });


                $('.deleteID').click(function() {
                    // alert("ffff");
//deelteID
                    var MemId = this.id;

                    $('.myid').click(function() {

                        $.get("Ajax/DeleteUser.jsp", {MemId: MemId}, function(data) {
                            $('#LDiv').html(data);
                        });
                    });
//                    alert("mem" + MemId);

//                  window.location.reload();
                });
            });
        </script>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%@page import="Com.Member.Dao.RewardStatusDao"%>
<%@page import="Com.Member.Model.RewardStatusModel"%>
<%@page import="java.util.List"%>
<%
    String level = request.getParameter("level");
    System.out.println("level" + level);
    int h = 0;
    //  String query1 = "from RewardStatusModel where level"+level+"= '" + true + "'";
    List<RewardStatusModel> r = new RewardStatusDao().getAll();

%>
<div class="table-responsive">
    <table id="example" class="table table-bordered">

        <thead>
            <tr>
                <th>Sr No</th>
                <th>Name</th>
                <th>UserName</th>
                <th>Mobile </th>

            </tr>
        </thead>

        <tbody>
            <%                MemberModel m;
                String name = "", uname = "", mbno = "";
                for (RewardStatusModel rm : r) {
                    h++;
                    if (level.equals("1")) {

                        if (rm.isLevel1()) {
                            m = new MemberDao().getById(rm.getUserId());
            %>
            <tr>
                <td><%=h%></td>
                <td><%=m.getName()%></td>
                <td><%=m.getUsername()%></td>
                <td><%=m.getMobNO()%></td>

            </tr>
            <%
                    }
                }
                if (level.equals("2")) {

                    if (rm.isLevel2()) {
                        m = new MemberDao().getById(rm.getUserId());
            %>
            <tr>
                <td><%=h%></td>
                <td><%=m.getName()%></td>
                <td><%=m.getUsername()%></td>
                <td><%=m.getMobNO()%></td>

            </tr>
            <%
                    }
                }
                if (level.equals("3")) {

                    if (rm.isLevel3()) {
                        m = new MemberDao().getById(rm.getUserId());
            %>
            <tr>
                <td><%=h%></td>
                <td><%=m.getName()%></td>
                <td><%=m.getUsername()%></td>
                <td><%=m.getMobNO()%></td>

            </tr>
            <%
                    }
                }
                if (level.equals("4")) {

                    if (rm.isLevel4()) {
                        m = new MemberDao().getById(rm.getUserId());
            %>
            <tr>
                <td><%=h%></td>
                <td><%=m.getName()%></td>
                <td><%=m.getUsername()%></td>
                <td><%=m.getMobNO()%></td>

            </tr>
            <%
                    }
                }
                if (level.equals("5")) {

                    if (rm.isLevel5()) {
                        m = new MemberDao().getById(rm.getUserId());
            %>
            <tr>
                <td><%=h%></td>
                <td><%=m.getName()%></td>
                <td><%=m.getUsername()%></td>
                <td><%=m.getMobNO()%></td>

            </tr>
            <%
                    }
                }
                if (level.equals("6")) {

                    if (rm.isLevel6()) {
                        m = new MemberDao().getById(rm.getUserId());
            %>
            <tr>
                <td><%=h%></td>
                <td><%=m.getName()%></td>
                <td><%=m.getUsername()%></td>
                <td><%=m.getMobNO()%></td>

            </tr>
            <%
                    }
                }
                if (level.equals("7")) {

                    if (rm.isLevel7()) {
                        m = new MemberDao().getById(rm.getUserId());
            %>
            <tr>
                <td><%=h%></td>
                <td><%=m.getName()%></td>
                <td><%=m.getUsername()%></td>
                <td><%=m.getMobNO()%></td>

            </tr>
            <%
                    }
                }
                if (level.equals("8")) {

                    if (rm.isLevel8()) {
                        m = new MemberDao().getById(rm.getUserId());
            %>
            <tr>
                <td><%=h%></td>
                <td><%=m.getName()%></td>
                <td><%=m.getUsername()%></td>
                <td><%=m.getMobNO()%></td>

            </tr>
            <%
                    }

                }


            %>

            <%                }
            %>
        </tbody>


    </table>
</div>
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
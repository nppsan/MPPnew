
<%@page import="Com.Admin.Dao.AdminDao"%>
<%@page import="Com.Admin.Model.AdminModel"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<script src="../../js/Alertajax.js" type="text/javascript"></script>
<script src="../../TimeJS/Moment_timezone.js" type="text/javascript"></script>
<script src="../../TimeJS/momentjs.js" type="text/javascript"></script>
<link href="../Css/Mycss.css" rel="stylesheet" type="text/css"/>
<link href="../../Css/mediaCss.css" rel="stylesheet" type="text/css"/>

<style>
    .utcclass
    {
        display: none;

    }
    .HedaerName
    {
        color:white;
    }

</style>
<style>

    #loading {
        -webkit-animation: rotation 2s infinite linear;
    }

    @-webkit-keyframes rotation {
        from {
            -webkit-transform: rotate(0deg);
        }
        to {
            -webkit-transform: rotate(359deg);
        }
    }
</style>


<%
//   MemberModel sidebarr = (MemberModel) session.getAttribute("Admin");
//  
//    if (sidebarr == null) {
//        out.println("<script type=\"text/javascript\">");
////        out.println("alert('Login First !!');");
//        out.println("location='Login.jsp';");
//        out.println("</script>");
//    } else {

%>

<%  int todayF = 0;
    int FutureF = 0;
    Date d = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    String today = formatter.format(d);
   
%>

  
<header class="topbar-nav">
    <nav class="navbar navbar-expand fixed-top mytopbar">
        <ul class="navbar-nav mr-auto align-items-center">
            <li class="nav-item" style="padding-right:10px"><img class=""  src="../trex-large.png" alt="Logo" width="40" height="40" /></li>

            <li class="nav-item"> <span class="HedaerName">MPP</span></li>
            <li class="nav-item">
                <a class="nav-link toggle-menu" href="javascript:void();">
                    <i class="icon-menu menu-icon"></i>
                </a>
            </li>

        </ul>

        <ul class="navbar-nav align-items-center right-nav-link">
            <%
                HttpSession session5 = request.getSession();
                String uname = String.valueOf(session5.getAttribute("user"));
                System.out.println(uname);
                AdminModel am = new AdminDao().getByUsername(uname);
            %>

            <li style="color:white;margin-right:20px; "><%=session5.getAttribute("user")%></li>
            <li style="margin-right:30px">
                <div id="divLocal" style="color:white">

                </div>
                <div class="utcclass">
                    <div id="divUTC" ></div>

                </div>

                <div id="divLocal" style="color:white">
                </div>
            </li>
            
       

            <li class="nav-item">
                <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
                    <span class="user-profile">

                        <img src="../MyImg/male.png" class="img-circle" alt="user avatar">

                    </span>
                </a>
                <ul class="dropdown-menu dropdown-menu-right">
                    <li class="dropdown-item user-details">
                        <a href="javaScript:void();">
                            <div class="media">
                                <div class="avatar">

                                    <img src="../MyImg/male.png" class="align-self-start mr-3" alt="user avatar">

                                </div>
                                <div class="media-body">
                                    <h6 class="mt-2 user-title">ADMIN</h6>
                                    <p class="user-subtitle"><%=am.getEmail()%></p>
                                </div>
                            </div>
                        </a>
                    </li>
<!--                    <li class="dropdown-divider"></li>
                    <li class="dropdown-item"><a href="changePassword.jsp"><i class="icon-settings mr-2"></i> Change Password</a></li>-->

                    <li class="dropdown-divider"></li>
                    <li class="dropdown-item"><a href="../AdminLogoutServlet"><i class="icon-power mr-2"></i> Logout</a></li>
                </ul>
            </li>

        </ul>
    </nav>
</header>

<%

//    }
%>
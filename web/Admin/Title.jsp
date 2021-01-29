<title>T-REX MPP</title>
  <!--favicon-->
  <link rel="icon" href="../trex-large.png" type="image/x-icon"/>
  <%
    HttpSession sessions1 = request.getSession(false);
            if (sessions1 == null )
            {
                
                 System.err.println("Session not started, Login first");
                 response.sendRedirect("Login.jsp");
%>

                <script>//window.open("Login.jsp"); </script>
<% 

                    return;
            }else {
                if(sessions1.getAttribute("user")== null)
                {
                    response.sendRedirect("Login.jsp");
                    return;
                }
            }
%>
  
  
  <style>
      .mytopbar
      {
        background-color: #6b72a9;
          
      }
  </style>
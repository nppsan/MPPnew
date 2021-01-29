/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Controller;

import Com.Admin.Dao.AdminDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author npp
 */
@WebServlet(name = "SuperAdminLoginServlet", urlPatterns = {"/SuperAdminLoginServlet"})
public class SuperAdminLoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String username = request.getParameter("uname");
            String password = request.getParameter("password");
           
            System.out.println("User Name" + username);
            System.out.println("Password" + password);
            
            AdminDao a = new AdminDao();
            if(a.login(username,password))
            {
                
                 System.out.println("sdfdsf in if" );
                HttpSession session = request.getSession();
                session.setAttribute("user", username);
                out.println(session.getAttribute("user"));
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Admin Login Sucessfull !!');");
                //out.println("window.open('Admin/NewHome.jsp','_blank');");
                out.println("location='Admin/AdminHome.jsp';");
                out.println("</script>");
            }else{
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Incorrect username or password');");
                out.println("location='Admin/Login.jsp';");
                out.println("</script>");
            }
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

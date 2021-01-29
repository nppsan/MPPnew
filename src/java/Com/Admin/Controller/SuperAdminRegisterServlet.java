/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Controller;

import Com.Admin.Dao.AdminDao;
import Com.Admin.Model.AdminModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author npp
 */
@WebServlet(name = "SuperAdminRegisterServlet", urlPatterns = {"/SuperAdminRegisterServlet"})
public class SuperAdminRegisterServlet extends HttpServlet {

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
            String name = request.getParameter("name");
            //String lname = request.getParameter("lname");
            String mobile = request.getParameter("mobile");
            String email = request.getParameter("email");
            String uname = request.getParameter("uname");
            String pwd = request.getParameter("pwd");
            //String gender = request.getParameter("gender");
            //String city = request.getParameter("city");
            
            System.out.println("SuperAdminRegisterServlet");
            System.out.println("name" + name);
            
            AdminModel u = new AdminModel();
            
            u.setName(name);
            u.setEmail(email);
            u.setMobile(mobile);
            u.setUname(uname);
            u.setPwd(pwd);

            AdminDao ud = new AdminDao();

            boolean temp = false;
            temp = ud.save(u);
            if (temp) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User save Sucessfully  !!');");
                out.println("location='Admin/Login.jsp';");
                out.println("</script>");
//                response.sendRedirect("Login.jsp");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User not save !!');");
                out.println("location='Admin/SuperAdminSignUp.jsp';");
                out.println("</script>");
//                response.sendRedirect("register.jsp");
            }

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SuperAdminRegisterServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SuperAdminRegisterServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

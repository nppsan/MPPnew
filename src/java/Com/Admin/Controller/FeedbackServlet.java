/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Controller;

import Com.Admin.Dao.FeedbackDao;
import Com.Admin.Model.FeedbackModel;
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
 * @author NPP
 */
@WebServlet(name = "FeedbackServlet", urlPatterns = {"/FeedbackServlet"})
public class FeedbackServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(false);
            if (session == null )
            {
                
                 System.err.println("Session not started, Login first");
                 response.sendRedirect("Admin/Login.jsp");
                    return;
            }else {
                if(session.getAttribute("user")== null)
                {
                    response.sendRedirect("Admin/Login.jsp");
                    return;
                }
            }
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String name = request.getParameter("txtName");
            String subject = request.getParameter("txtSub");
            String email = request.getParameter("txtEmail");
            String mobile = request.getParameter("txtMobNo");
            String feedback = request.getParameter("txtFeedback");
            
            
            
            System.out.println(" Name" + name);
            FeedbackModel c = new FeedbackModel();
            c.setName(name);
            c.setSub(subject);
            c.setEmail(email);
            c.setMobile(mobile);
            c.setFeedback(feedback);
            
            FeedbackDao fd = new FeedbackDao();

            boolean temp = false;
            temp = fd.save(c);
            if (temp) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Feedback Sent Sucessfully  !!');");
                out.println("location='index1.jsp';");
                out.println("</script>");
//                response.sendRedirect("register.jsp");
                
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Category not save !!');");
                out.println("location='Admin/Category.jsp';");
                out.println("</script>");
//                response.sendRedirect("register.jsp");
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

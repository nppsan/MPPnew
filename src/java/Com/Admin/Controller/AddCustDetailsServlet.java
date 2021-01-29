/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Controller;

import Com.Admin.Dao.CustDetailsDao;
import Com.Admin.Model.CustDetailsModel;
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
@WebServlet(name = "AddCustDetailsServlet", urlPatterns = {"/AddCustDetailsServlet"})
public class AddCustDetailsServlet extends HttpServlet {

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
            
            
           String mobile=request.getParameter("cmobile"); 
           int invNum= Integer.parseInt(request.getParameter("innumber")); 
           String email=request.getParameter("cemail");
           String custName=request.getParameter("cname");
           String addrAP=request.getParameter("cap");
           String addrTal=request.getParameter("ctal");
           String addrDist=request.getParameter("cdist");
           String gstnAadhar=request.getParameter("cgstaadhar");
           String addrState=request.getParameter("cstate");
           int stateCode= Integer.parseInt(request.getParameter("cstcode"));
           
            
            System.out.println("/AddCustDetailsServelet");
            System.out.println("Invoice Numb" + invNum);
            System.out.println("Customer Name "+ custName );
           
            CustDetailsModel p = new CustDetailsModel();
            
            p.setAddrAP(addrAP);
            p.setAddrDist(addrDist);
            p.setAddrState(addrState);
            p.setAddrTal(addrTal);
            p.setCustName(custName);
            p.setEmail(email);
            p.setGstnAadhar(gstnAadhar);
            p.setInvNum(invNum);
            p.setMobile(mobile);
            p.setStateCode(stateCode);
            
            CustDetailsDao pd = new CustDetailsDao();

            boolean temp = false;
            temp = pd.save(p);
            if (temp) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Customer Details saved Sucessfully  !!');");
                out.println("location='Admin/Bill.jsp';");
                out.println("</script>");
//                response.sendRedirect("register.jsp");
                
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Category not save !!');");
                out.println("location='Admin/AddProduct.jsp';");
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

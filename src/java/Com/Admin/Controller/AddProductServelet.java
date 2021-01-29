/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Com.Admin.Controller;

import Com.Admin.Dao.ProductDao;
import Com.Admin.Model.ProductModel;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author npp
 */
@WebServlet(name = "AddProductServelet", urlPatterns = {"/AddProductServelet"})
public class AddProductServelet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String ctype;
    String cid;
    
    @Override
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        processRequest(request, response);
    }

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
        Cookie cookie = null;
        Cookie[] cookies = null;
        
        // Get an array of Cookies associated with this domain
        cookies = request.getCookies();
        
        for (int i = 0; i < cookies.length; i++) {
            cookie = cookies[i];
            out.print("Name : " + cookie.getName( ) + ", ");
            out.print("Value: " + cookie.getValue( ) + " ");
            if(cookie.getName()=="cname")
            {
                ctype = cookie.getName();
                cid = cookie.getValue();
            };
         }
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String Product = request.getParameter("Product");
           String Psize = request.getParameter("ProductSize");
           float ProductRate = Float.parseFloat(request.getParameter("ProductRate"));
           String type =request.getParameter("type");
           long catid = Long.parseLong(request.getParameter("catid"));
            
            System.out.println("/AddProductServelet");
            System.out.println("Product Name" + Product);
            System.out.println("CatId "+ catid);
           
            ProductModel p = new ProductModel();
            
            p.setPname(Product);
            p.setCatid(catid);
            p.setPsize(Psize);
            p.setRate(ProductRate);
            p.setType(type);
            
            ProductDao pd = new ProductDao();

            boolean temp = false;
            temp = pd.save(p);
            if (temp) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Product saved Sucessfully  !!');");
                out.println("location='Admin/AdminHome.jsp';");
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

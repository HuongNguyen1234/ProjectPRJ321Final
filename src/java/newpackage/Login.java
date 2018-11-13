/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import com.data1.DAO;
import com.entity.Staff;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nguyen Bao Long
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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
        response.setContentType("text/html;charset=UTF-8");
        try {
            PrintWriter out = response.getWriter();
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            DAO dao = new DAO();
            Staff staff;
            staff = dao.getStaffLogin(name, password);
            HttpSession session = request.getSession();
            if (staff == null) {
                session.setAttribute("name", null);
                session.setAttribute("id", null);
                request.setAttribute("error", "Tên đăng nhập hoặc mật khẩu sai!");
                request.getRequestDispatcher("home.jsp").include(request, response);
            } else {
                session.setAttribute("maBC", staff.getMaBC());
                session.setAttribute("name", name);
                session.setAttribute("id", staff.getId());
                session.setAttribute("chucVu",staff.getChucVu());
                session.setAttribute("cart", staff.getMaBC());
                request.getRequestDispatcher("home.jsp").forward(request, response);
            }

        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
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

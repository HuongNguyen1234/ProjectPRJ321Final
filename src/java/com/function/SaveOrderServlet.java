/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.function;

import com.data1.DAO;
import com.entity.Journal;
import com.entity.Order;
import com.entity.Post;
import java.io.IOException;
import java.util.Date;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author huong karatedo
 */
public class SaveOrderServlet extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        try {
            DAO dao= new DAO();
            String maDH=request.getParameter("maDH");
            int maBC=(int)request.getSession().getAttribute("maBC");
            int sdtGui = Integer.parseInt(request.getParameter("sdtGui"));
            String tenNhan = request.getParameter("tenNhan");
            String diaChiNhan = request.getParameter("diaChiNhan");
            int sdtNhan = Integer.parseInt(request.getParameter("sdtNhan"));
            String loaiHang = request.getParameter("productType");
            int gam = Integer.parseInt(request.getParameter("khoiLuong"));
            String b=request.getParameter("phiShip");
            String [] a = b.split(",");
            String [] a1 = request.getParameter("phiThuHo").split(",");
            String [] a2 = request.getParameter("tongTien").split(",");
            float phiship=Float.parseFloat(a[0]);
            float phiThuHo=Float.parseFloat(a1[0]);
            float tongtien=Float.parseFloat(a2[0]);
            request.setCharacterEncoding("UTF-8");
            String tenGui = request.getParameter("tenGui");
            String diaChiGui = request.getParameter("diaChiGui");
            String idTrangThai="1d";
            String idHT= randomString(4);
            Date date=java.util.Calendar.getInstance().getTime();  
            Post p=dao.getPost(maBC);
            String diaDiem= p.diaChiPost();
            Journal jo= new Journal(idHT, maDH, idTrangThai, date, diaChiGui);
            dao.addJournal(jo);
            Order order= new Order(maDH, maBC, tenGui, diaChiGui, sdtGui, tenNhan, diaChiNhan, loaiHang,gam, sdtNhan, idTrangThai,phiship, phiThuHo, tongtien);
                    dao.addOrders(order);
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } catch (Exception e) {
            Logger.getLogger(SaveOrderServlet.class.getName()).log(Level.SEVERE, null, e); 
        
        }
    }
 public String randomString(int length) {
        String[] chars = "ABCD0123456789".split("");
        String str = "";
        Random ran = new Random();
        for (int i = 0; i < length; i++) {
            str += chars[ran.nextInt(chars.length)];
        }
        return str;
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

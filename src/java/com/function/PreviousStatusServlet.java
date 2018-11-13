/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.function;

import com.data1.DAO;
import com.entity.Journal;
import com.entity.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
public class PreviousStatusServlet extends HttpServlet {

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
        try {
            String maDH = request.getParameter("maDH");
            DAO dao = new DAO();
            Order or = dao.getOrderByDH(maDH);
            String tt = or.getIdTrangThai();
            String idHT = randomString(4);
            Date date = java.util.Calendar.getInstance().getTime();
            if (tt.equals("1d")) {
                
            } else if (tt.equals("2d")) {
                String tt2 = "1d";
                dao.updateTrangThaiOrder(maDH, tt2);
                Journal j = new Journal(idHT, maDH, tt2, date, or.getDiaChiNhan());
                dao.addJournal(j);
            } else if (tt.equals("3d")){
                String tt2 = "2d";
                dao.updateTrangThaiOrder(maDH, tt2);
                Journal j = new Journal(idHT, maDH, tt2, date, or.getDiaChiNhan());
                dao.addJournal(j);
            }
            String t = dao.getTenTrangThai(or.getIdTrangThai());
            List<Journal> jo = new ArrayList<>();
            jo = dao.getListJournal(or.getMaDH());
            String journalListToString = "";
            for (Journal j : jo) {
                journalListToString += j.toString() + "\n <br>";
            }
            request.setAttribute("journalList", journalListToString);
            request.setAttribute("khoiLuong", or.getKhoiLuong());
            request.setAttribute("tenTrangThai", t);
            request.setAttribute("IdTrangThai", or.getIdTrangThai());
            request.setAttribute("maDH", or.getMaDH());
            request.getRequestDispatcher("status.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
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

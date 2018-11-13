/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.function;

import com.controller.ListPostController;
import com.data1.DAO;
import com.entity.Huyen;
import com.entity.TinhPhi;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class ChargeDeliveryShowInforPost extends HttpServlet {

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
            DAO dao = new DAO();
            ListPostController list = new ListPostController();
            String type=request.getParameter("type");
            int gam=Integer.parseInt(request.getParameter("gam"));
            float tinh = Float.parseFloat(request.getParameter("tinh"));
            float huyen = Float.parseFloat(request.getParameter("huyen"));
            List<Huyen> listHuyen = listHuyen = dao.getAllHuyen(tinh);
            String mien = request.getParameter("mien");
            list.setListPost(dao.getPostHuyen(huyen));
            TinhPhi t = dao.getPhi(mien);
            float payment = 0;
            if (0 < gam && gam < 0.25) {
                if (mien.equals(t.getMaMien())) {
                    payment = t.getGia();
                }

            } else if (0.25 <= gam && gam <= 0.5) {
                if (mien.equals(t.getMaMien())) {
                    payment = t.getGia();
                }
            } else if (0.5 < gam && gam <= 1) {
                if (mien.equals(t.getMaMien())) {
                    payment = t.getGia();
                }
            } else if (1 < gam && gam <= 1.5) {
                if (mien.equals(t.getMaMien())) {
                    payment = t.getGia();
                }
            } else if(gam>1.5){
               if (mien.equals(t.getMaMien())) {
                    payment = t.getGia()*gam/2;
                }
            }
            if (mien.equalsIgnoreCase("")) {
                request.setAttribute("currentMien", mien);
            }
            request.setAttribute("mien",mien);
            request.setAttribute("payment",payment);
            request.setAttribute("type", type);
            request.setAttribute("gam", gam);
            request.setAttribute("huyen", listHuyen);
            request.setAttribute("currentTinh", tinh);
            request.setAttribute("currentHuyen", huyen);
            request.setAttribute("listpost", list.getListPost());
            request.getRequestDispatcher("chargeAndDelivery.jsp").forward(request, response);
        } catch (Exception e) {
            Logger.getLogger(ChargeDeliveryShowInforPost.class.getName()).log(Level.SEVERE, null, e);
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

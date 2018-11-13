/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.function;

import com.data1.DAO;
import com.entity.TinhPhi;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;
import java.util.Base64;

/**
 *
 * @author huong karatedo
 */
public class AddInforOrderServlet extends HttpServlet {

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
            DAO dao = new DAO();
            HttpSession session = request.getSession();
//            String maBC=request.getParameter("");
            String tenGui = request.getParameter("tenGui");
            String diaChiGui = request.getParameter("diaChiGui");
            int sdtGui = Integer.parseInt(request.getParameter("sdtGui"));
            String tenNhan = request.getParameter("tenNhan");
            String diaChiNhan = request.getParameter("diaChiNhan");
            
            int sdtNhan = Integer.parseInt(request.getParameter("sdtNhan"));
            String loaiHang = request.getParameter("productType");
            String mien = request.getParameter("mien");
            float phiThuHo = Integer.parseInt(request.getParameter("phiThuHo"));
           
            String tenMien = dao.getTenMien(mien);
            TinhPhi t = dao.getPhi(mien);
            int gam = Integer.parseInt(request.getParameter("khoiLuong"));
            float tongTien = 0;
            float payment = 0;
            //
            String maDH = randomString(13);
            if (0 < gam && gam < 0.25) {
                if (mien.equals(t.getMaMien())) {
                    payment =  t.getGia();
                }

            } else if (0.25 <= gam && gam <= 0.5) {
                if (mien.equals(t.getMaMien())) {
                    payment =  t.getGia();
                }
            } else if (0.5 < gam && gam <= 1) {
                if (mien.equals(t.getMaMien())) {
                    payment =  t.getGia();
                }
            } else if (1 < gam && gam <= 1.5) {
                if (mien.equals(t.getMaMien())) {
                    payment = (int) t.getGia();
                }
            } else if (gam > 1.5) {
                if (mien.equals(t.getMaMien())) {
                    payment = (int) (t.getGia() * gam / 2);
                }
            }
            tongTien = payment + phiThuHo;
            //generate code QR
            ByteArrayOutputStream out = QRCode.from(maDH).to(ImageType.PNG).withSize(300, 300).stream();
            String base64Encoded = Base64.getEncoder().encodeToString(out.toByteArray());

            //
            request.setAttribute("maDH", maDH);
            request.setAttribute("tenGui", tenGui);
            request.setAttribute("diaChiGui", diaChiGui);
            request.setAttribute("sdtGui", sdtGui);
            request.setAttribute("tenNhan", tenNhan);
            request.setAttribute("diaChiNhan", diaChiNhan);
            request.setAttribute("sdtNhan", sdtNhan);
            request.setAttribute("khoiLuong", gam);
            request.setAttribute("productType",loaiHang.equals("1") ? "Bưu phẩm" : "Thư");
            request.setAttribute("phiThuHo", phiThuHo);
            request.setAttribute("mienGui", tenMien);
            request.setAttribute("phiShip", payment);
            request.setAttribute("tongTien", tongTien);
            request.setAttribute("qrImg", "data:image/gif;base64," + base64Encoded + "");
            //
            //tien
            request.getRequestDispatcher("confirmInfoPackage.jsp").forward(request, response);
            //

        } catch (Exception e) {
            Logger.getLogger(AddInforOrderServlet.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public String randomString(int length) {
        String[] chars = "ASDGHJKLOIUYTREWQZXCVBNM0123456789".split("");
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

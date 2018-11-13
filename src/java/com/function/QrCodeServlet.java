/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.function;

import com.data1.DAO;
import com.entity.Journal;
import com.entity.Order;
import com.entity.TrangThai;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sun.misc.BASE64Decoder;

/**
 *
 * @author huong karatedo
 */
public class QrCodeServlet extends HttpServlet {

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
//            StringBuffer buffer = new StringBuffer();
//            Reader reader = request.getReader();
//            int current;
//            while ((current = reader.read()) >= 0) {
//                buffer.append((char) current);
//            }
//            String data = new String(buffer);
            String data = request.getParameter("qrCode");
            data = data.substring(data.indexOf(",") + 1);
            Result result = null;

            BufferedImage image = null;
            BASE64Decoder decoder = new BASE64Decoder();
            byte[] imgBytes = decoder.decodeBuffer(data);
            InputStream in = new ByteArrayInputStream(imgBytes);
            image = ImageIO.read(in);
            LuminanceSource source = new BufferedImageLuminanceSource(image);
            BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));
            try {
                result = new MultiFormatReader().decode(bitmap);
            } catch (NotFoundException e) {
                // fall thru, it means there is no QR code in image
            }

            if (result != null) {
//                System.out.println("QR code data is: " + result.getText());
                Order order = dao.getOrderByDH(result.getText());
                String t = dao.getTenTrangThai(order.getIdTrangThai());
                List<Journal> jo = new ArrayList<>();
                jo = dao.getListJournal(order.getMaDH());
                String journalListToString = "";
                for (Journal j : jo) {
                    journalListToString += j.toString() + "\n <br>";
                }
                request.setAttribute("journalList", journalListToString);
                request.setAttribute("khoiLuong", order.getKhoiLuong());
                request.setAttribute("tenTrangThai", t);
                request.setAttribute("IdTrangThai", order.getIdTrangThai());
                request.setAttribute("maDH", order.getMaDH());
            }
                request.getRequestDispatcher("status.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
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

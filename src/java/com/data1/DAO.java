/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data1;

import com.entity.Huyen;
import com.entity.Journal;
import com.entity.Mien;
import com.entity.Order;
import com.entity.Post;
import com.entity.Service;
import com.entity.Staff;
import com.entity.Tinh;
import com.entity.TinhPhi;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author huong karatedo
 */
public class DAO {

    private DBConnect db;

    public DAO() {
        db = new DBConnect();
    }

    public List<Order> getAllOrder() throws Exception {
        String xSql = "select * from Orders";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            rs = ps.executeQuery();
            List<Order> list = new ArrayList<>();
            while (rs.next()) {
                String maDH = rs.getString("MaHD");
                int maBC = rs.getInt("MaBC");
                String tenNguoiGui = rs.getString("TenGui");
                String diaChiGui = rs.getString("DiaChiGui");
                int sdtGui = rs.getInt("SdtGui");
                String tenNguoiNhan = rs.getString("TenNhan");
                String diaChiNhan = rs.getString("DiaChiNhan");
                String loaiHang = rs.getString("LoaiHang");
                int khoiLuong = rs.getInt("KhoiLuong");
                int sdtNhan = rs.getInt("SdtNhan");
                float phiShip = rs.getFloat("PhiShip");
                float phiThuHo = rs.getFloat("PhiThuHo");
                String idTrangThai = rs.getString("IdTrangThai");
                float tongTien = rs.getFloat("TongTien");
                Order order = new Order(maDH, maBC, tenNguoiGui, diaChiGui, sdtGui, tenNguoiNhan, diaChiNhan, loaiHang, khoiLuong, sdtNhan, idTrangThai, phiShip, phiThuHo, tongTien);
                list.add(order);
            }

            return list;

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }

    }

    public Order getOrderByDH(String donhang) throws Exception {
        String xSql = "select * from Orders where MaDH=?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, donhang);
            rs = ps.executeQuery();
            while (rs.next()) {
                String maDH = rs.getString("MaDH");
                int maBC = rs.getInt("MaBC");
                String tenNguoiGui = rs.getString("TenGui");
                String diaChiGui = rs.getString("DiaChiGui");
                int sdtGui = rs.getInt("SdtGui");
                String tenNguoiNhan = rs.getString("TenNhan");
                String diaChiNhan = rs.getString("DiaChiNhan");
                String loaiHang = rs.getString("LoaiHang");
                int khoiLuong = rs.getInt("KhoiLuong");
                int sdtNhan = rs.getInt("SdtNhan");
                float phiShip = rs.getFloat("PhiShip");
                float phiThuHo = rs.getFloat("PhiThuHo");
                String idTrangThai = rs.getString("IdTrangThai");
                float tongTien = rs.getFloat("TongTien");
                Order order = new Order(maDH, maBC, tenNguoiGui, diaChiGui, sdtGui, tenNguoiNhan, diaChiNhan, loaiHang, khoiLuong, sdtNhan, idTrangThai, phiShip, phiThuHo, tongTien);
                return order;
            }
        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
        return null;

    }

    public List<Post> getAllPost() throws SQLException, Exception {
        String result = "";
        String xSql = "select * from BuuCuc ";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Post> list = new ArrayList<>();
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                float maBC = rs.getFloat("maBC");
                String tenBC = rs.getString("TenBC");
                float tinh = rs.getFloat("MaTinh");
                float huyen = rs.getFloat("MaHuyen");
                String xa = rs.getString("Xa");
                String thon = rs.getString("Thon");
                Post p = new Post(maBC, tenBC, tinh, huyen, xa, thon);
                list.add(p);
            }
            return list;

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }

    public Post getPost(int mBC) throws SQLException, Exception {
        String result = "";
        String xSql = "select * from BuuCuc where MaBC = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setFloat(1, mBC);
            rs = ps.executeQuery();
            while (rs.next()) {
                float maBC = rs.getFloat("maBC");
                String tenBC = rs.getString("TenBC");
                float tinh = rs.getFloat("MaTinh");
                float huyen = rs.getFloat("MaHuyen");
                String xa = rs.getString("Xa");
                String thon = rs.getString("Thon");

                Post p = new Post(maBC, tenBC, tinh, huyen, xa, thon);
                return p;
            }

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
        return null;
    }

    public Post getBuuCucDen(String xa, String huyen, String tinh) throws SQLException, Exception {
        String result = "";
        String xSql = "select * from BuuCuc where  Xa=? and MaHuyen=(select MaHuyen from Huyen where Ten = ?) "
                + "and MaTinh=(select MaTinh from Tinh where Ten= ?)";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, xa);
            ps.setString(2, huyen);
            ps.setString(3, tinh);
            rs = ps.executeQuery();
            while (rs.next()) {
                float maBC = rs.getFloat("maBC");
                String tenBC = rs.getString("TenBC");
                float tinh1 = rs.getFloat("MaTinh");
                float huyen1 = rs.getFloat("MaHuyen");
                String xa1 = rs.getString("Xa");
                String thon = rs.getString("Thon");
                Post p = new Post(maBC, tenBC, tinh1, huyen1, xa1, thon);
                return p;
            }

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
        return null;
    }

    public Staff getStaffLogin(String name, String pass) throws SQLException, Exception {
        String result = "";
        String xSql = "select * from NhanVien where UserName=? and Password=?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, name);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            List<Staff> list = new ArrayList<>();
            while (rs.next()) {
                String id = rs.getString("Id");
                String ten = rs.getString("Ten");
                String diaChi = rs.getString("DiaChi");
                int sdt = rs.getInt("Sdt");
                String chucVu = rs.getString("ChucVu");
                int maBC = rs.getInt("maBC");
                String userName = rs.getString("UserName");
                String password = rs.getString("Password");
                Staff s = new Staff(id, ten, diaChi, sdt, chucVu, maBC, userName, password);

                return s;
            }

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
        return null;
    }

    public List<Staff> getStaff() throws SQLException, Exception {
        String result = "";
        String xSql = "select * from NhanVien ";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
//            ps.setFloat(1, mBC);
            rs = ps.executeQuery();
            List<Staff> listStaff = new ArrayList<>();
            while (rs.next()) {
                String id = rs.getString("Id");
                String ten = rs.getString("Ten");
                String diaChi = rs.getString("DiaChi");
                int sdt = rs.getInt("Sdt");
                String chucVu = rs.getString("ChucVu");
                int maBC = rs.getInt("maBC");
                String userName = rs.getString("UserName");
                String password = rs.getString("Password");
                Staff s = new Staff(id, ten, diaChi, sdt, chucVu, maBC, userName, password);
                listStaff.add(s);
            }
            return listStaff;
        } catch (SQLException ex) {
            throw ex;
        }

    }

    public Staff getStaffById(String id) throws SQLException, Exception {
        String xSql = "select * from NhanVien where Id=?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                String i = rs.getString("Id");
                String ten = rs.getString("Ten");
                String diaChi = rs.getString("DiaChi");
                int sdt = rs.getInt("Sdt");
                String chucVu = rs.getString("ChucVu");
                int maBC = rs.getInt("maBC");
                String userName = rs.getString("UserName");
                String password = rs.getString("Password");
                Staff s = new Staff(id, ten, diaChi, sdt, chucVu, maBC, userName, password);
                return s;
            }
        } catch (SQLException ex) {
            throw ex;
        }
        return null;
    }

    public String getChucVuStaff(String id) throws SQLException, Exception {
        String xSql = "select * from NhanVien where Id=?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                String chucVu = rs.getString("ChucVu");
                return chucVu;
            }
        } catch (SQLException ex) {
            throw ex;
        }
        return null;
    }

    public void getDeleteStaff(String id) throws SQLException, Exception {
        String xSql = "DELETE FROM NhanVien WHERE id = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            throw ex;
        }

    }

    public List<Tinh> getAllTinhBuuCuc() throws SQLException, Exception {
        String xSql = "select* from Tinh";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            rs = ps.executeQuery();
            List<Tinh> list = new ArrayList<>();
            while (rs.next()) {
                float ma = rs.getFloat("MaTinh");
                String ten = rs.getString("Ten");
                Tinh t1 = new Tinh(ma, ten);
                list.add(t1);
            }

            return list;

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }

    }

    public List<Huyen> getAllHuyen(float maTinh) throws SQLException, Exception {
        String xSql = "select * from Huyen where MaTinh=? ";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setFloat(1, maTinh);
            rs = ps.executeQuery();
            List<Huyen> list = new ArrayList<>();
            Huyen tmp = new Huyen(-1, -1, "");
            list.add(tmp);
            while (rs.next()) {
                float matinh = rs.getFloat("MaTinh");
                float mahuyen = rs.getFloat("MaHuyen");
                String ten = rs.getString("Ten");
                Huyen h = new Huyen(matinh, mahuyen, ten);
//                if (ma != null)  
                list.add(h);
            }

            return list;

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }

    public String getTenHuyen(float maHuyen) throws SQLException, Exception {
        String xSql = "select Ten from Huyen where MaHuyen=? ";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setFloat(1, maHuyen);
            rs = ps.executeQuery();
            List<Huyen> list = new ArrayList<>();
            while (rs.next()) {

                String ten = rs.getString("Ten");
                return ten;
            }

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
        return null;

    }

    public String getTenTinh(float maTinh) throws SQLException, Exception {
        String xSql = "select Ten from Tinh where MaTinh=?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setFloat(1, maTinh);
            rs = ps.executeQuery();
            List<Tinh> list = new ArrayList<>();
            while (rs.next()) {
                String ten = rs.getString("Ten");
                return ten;
            }

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }

        return null;
    }

    public List<Post> getPostHuyen(float huyen) throws SQLException, Exception {
        String xSql = "select * from BuuCuc where MaHuyen=?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setFloat(1, huyen);
            rs = ps.executeQuery();
            List<Post> list = new ArrayList<>();
            while (rs.next()) {
                float maBc = rs.getFloat("MaBC");
                String tenBC = rs.getString("TenBC");
                float tin = rs.getFloat("MaTinh");
                float huye = rs.getFloat("MaHuyen");
                String xa = rs.getString("Xa");
                String thon = rs.getString("Thon");
                Post p = new Post(maBc, tenBC, tin, huye, xa, thon);
                list.add(p);
            }

            return list;

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }

    public List<Mien> getMien() throws SQLException, Exception {
        String xSql = "select * from Mien ";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            rs = ps.executeQuery();
            List<Mien> list = new ArrayList<>();
            while (rs.next()) {
                String maDH = rs.getString("MaMien");
                String ten = rs.getString("TenMien");
                Mien m = new Mien(maDH, ten);
                list.add(m);
            }
            return list;
        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }

    public TinhPhi getPhi(String maMien) throws SQLException, Exception {
        String xSql = "select MaMien,Gia from TinhPhi where MaMien=? ";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, maMien);
            rs = ps.executeQuery();
            List<Mien> list = new ArrayList<>();
            while (rs.next()) {
                float gia = rs.getFloat("Gia");
                String ma = rs.getString("MaMien");
                TinhPhi p = new TinhPhi(ma, gia);
                return p;
            }

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
        return null;

    }

    public String getTenMien(String maMien) throws SQLException, Exception {
        String xSql = "select TenMien from Mien where MaMien=? ";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, maMien);
            rs = ps.executeQuery();
            while (rs.next()) {
                String ma = rs.getString("TenMien");
                return ma;

            }
        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
        return null;

    }

    public List<Journal> getListJournal(int idHT) throws Exception {
        String result = "";
        String xSql = "select * from Journal where IdHT = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setInt(1, idHT);
            rs = ps.executeQuery();
            List<Journal> list = new ArrayList<>();
            while (rs.next()) {
                String IdHT = rs.getString("IdHT");
                String maDH = rs.getString("MaDH");
                String thoiGian = rs.getString("ThoiGian");
                Date trangThai = rs.getDate("TrangThai");
                String DiaChi = rs.getString("DiaChi");
                Journal jo = new Journal(IdHT, maDH, thoiGian, trangThai, DiaChi);
                list.add(jo);
            }
            return list;

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }

    public String getTenTrangThai(String t) throws Exception {
        String xSql = "select * from TrangThai where IdTrangThai = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, t);
            rs = ps.executeQuery();
            List<Journal> list = new ArrayList<>();
            while (rs.next()) {
                String ten = rs.getString("TenTrangThai");

                return ten;
            }

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
        return null;
    }

    public List<Journal> getListJournal(String mDH) throws Exception {
        String result = "";
        String xSql = "select * from Journal where MaDH = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, mDH);
            rs = ps.executeQuery();
            List<Journal> list = new ArrayList<>();
            while (rs.next()) {
                String IdHT = rs.getString("IdHT");
                String maDH = rs.getString("MaDH");
                Date thoiGian = rs.getDate("ThoiGian");
                String trangThai = rs.getString("IdTrangThai");
                String DiaChi = rs.getString("DiaChi");
                Journal jo = new Journal(IdHT, maDH, trangThai, thoiGian, DiaChi);
                list.add(jo);
            }
            return list;

        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }
//    public void updatePassWordStaff(String username, String password) throws SQLException {
////        String result = "";
//        String xSql = "UPDATE NhanVien SET (name = ?) where code = ?";
//        Connection conn = null;
//        PreparedStatement ps = null;
//        try {
//            conn = db.getConnection();
//            ps = conn.prepareStatement(xSql);
//            ps.setString(1, name);
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
//        } finally {
//            conn.close();
//        }
//        //return null;
//    }

    public void addOrders(Order order) throws SQLException, Exception {
        String xSql = " insert into Orders (MaDH,MaBC,TenGui,DiaChiGui,"
                + "SdtGui,TenNhan,DiaChiNhan,LoaiHang,KhoiLuong,IdTrangThai,SdtNhan,PhiShip,TongTien)"
                + " values (?, ?, ?,?,?,?,?,?,?,?,?,?,?)";

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, order.getMaDH());
            ps.setInt(2, order.getMaBC());
            ps.setString(3, order.getTenNguoiGui());
            ps.setString(4, order.getDiaChiGui());
            ps.setInt(5, order.getSdtGui());
            ps.setString(6, order.getTenNguoiNhan());
            ps.setString(7, order.getDiaChiNhan());
            ps.setString(8, order.getLoaiHang());
            ps.setInt(9, order.getKhoiLuong());
            ps.setString(10, order.getIdTrangThai());
            ps.setInt(11, order.getSdtNhan());
            ps.setFloat(12, order.getPhiShip());
            ps.setFloat(13, order.getTongTien());
            ps.executeUpdate();
        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }

//    public void addPost(Post p) throws SQLException, Exception {
//        String xsql = "insert into BuuCuc (MaBC,TenBC,Tinh,Huyen,Xa,Thon)" + "value(?,?,?,?,?,?)";
//        Connection conn = null;
//        PreparedStatement ps = null;
//        try {
//            conn = db.getConnection();
//            ps = conn.prepareStatement(xsql);
//            ps.setFloat(1, p.getMaBC());
//            ps.setString(2, p.getTenBC());
//            ps.setString(3, p.getTinh());
//            ps.setString(4, p.getHuyen());
//            ps.setString(5, p.getXa());
//            ps.setString(6, p.getThon());
//            ps.executeUpdate();
//        } catch (SQLException ex) {
//            JOptionPane.showMessageDialog(null, ex.getMessage());
//        }
//    }
    public void addDichVu(Service s) throws SQLException, Exception {
        String xsql = "insert into DichVu (MaBC,TenDV,GiaDV)" + "value(?,?,?)";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xsql);
            ps.setInt(1, s.getMaBC());
            ps.setString(1, s.getTenDV());
            ps.setFloat(3, s.getGiaDV());
        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }

    public void addStaff(Staff staff) throws SQLException, Exception {
        String xsql = "insert into NhanVien (MaBC,Id,Ten,DiaChi,Sdt,ChucVu,UserName,Password)" + "value(?,?,?,?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xsql);
            ps.setFloat(1, staff.getMaBC());
            ps.setString(2, staff.getId());
            ps.setString(3, staff.getTen());
            ps.setString(4, staff.getDiaChi());
            ps.setInt(5, staff.getSdt());
            ps.setString(6, staff.getChucVu());
            ps.setString(7, staff.getUserName());
            ps.setString(8, staff.getPassword());
        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }

    public void addJournal(Journal j) throws SQLException, Exception {
        String xsql = "insert into Journal (IdHT,MaDH,ThoiGian,IdTrangThai,DiaChi)" + "values(?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xsql);
            ps.setString(1, j.getIdHT());
            ps.setString(2, j.getMaDH());
            ps.setDate(3, new java.sql.Date(j.getThoiGian().getTime()));
            ps.setString(4, j.getTrangThai());
            ps.setString(5, j.getDiaChi());
            ps.executeUpdate();
        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }

    public void updateTrangThaiOrder(String maDH, String iDTrangThaiTiepTheo) throws SQLException, Exception {
        String xsql = "update Orders set IdTrangThai = ? where MaDH = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xsql);
            ps.setString(1, iDTrangThaiTiepTheo);
            ps.setString(2, maDH);
            ps.executeUpdate();
        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }
//

    public void deleteNhanVien(String id) throws SQLException, Exception {
        String xSql = "DELETE FROM NhanVien WHERE Id = ?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(xSql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            throw ex;
        } finally {
            closeConnection(rs, ps, conn);
        }
    }

//    public Object[][] searchGroupName(String groupName, boolean isSort) {
////     int get = (int)jTable_show.getModel().getValueAt(jTable_show.getSelectedRow(), 0);
//        String xSql = "SELECT * FROM Project WHERE Employee_ID LIKE '%" + groupName + "%'";;
//        if (isSort == true) {
//            xSql += "ORDER by hours desc";
//        }
//
//        Connection conn = null;
//        PreparedStatement ps = null;
//        try {
//            conn = db.getConnection();
//            ps = conn.prepareStatement(xSql);
//            ResultSet rs = ps.executeQuery();
//            String StudentID, StudentName, Adrress;
//            String Status,GroupName;
//            List<Object[]> list = new ArrayList<>();
//            while (rs.next()) {
//                StudentID = rs.getString("StudentID");
//                StudentName = rs.getString("StudentName");
//                Adrress = rs.getString("Adrress");
//                Status = rs.getString("Status");
//                GroupName=rs.getString("GroupID");
////                boolean isFullTime = false;
////                if (Is_full_Time == 1) {
////                    isFullTime = true;
////                }
//                Object[] obj = {StudentID,StudentName,Adrress,Status,GroupName};
//                list.add(obj);
//            }
//            Object[][] objs = new Object[list.size()][4];
//            int i = 0;
//            for (Object[] object : list) {
//                objs[i] = object;
//                System.out.println(object[3]);
//                i++;
//            }
//            return objs;
//        } catch (Exception e) {
//            System.err.println("Got an exception! ");
//            JOptionPane.showMessageDialog(null, "Got an exception!");
//            System.err.println(e.getMessage());
//        }         // TODO add your handling code here:
//        return null;
//    }
    private void closeConnection(ResultSet rs, PreparedStatement ps, Connection conn) throws SQLException {
        if (rs != null && !rs.isClosed()) {
            rs.close();
        }
        if (ps != null && !ps.isClosed()) {
            ps.close();
        }
        if (conn != null && !conn.isClosed()) {
            conn.close();
        }
    }
}

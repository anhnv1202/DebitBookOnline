/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import dal.DebtDao;
import dal.UserDao;
import entities.Debt;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class AddDebtorServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            String username = (String) session.getAttribute("username");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            // Lấy ngày hiện tại
            Date currentDate = new Date();
        // Định dạng ngày tháng
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        // Chuyển đổi thành chuỗi theo định dạng
            String formattedDate = dateFormat.format(currentDate);
            Date format = dateFormat.parse(formattedDate);
            Timestamp timeCreat = new Timestamp(format.getTime());
            Timestamp timeUpdate = timeCreat;
            Debt debtor = new Debt(0, new UserDao().getUserByUsername(username).getId(), name, address, phone, email, 0, timeCreat, timeUpdate);
            DebtDao debtDao = new DebtDao();
            debtDao.addDebtor(debtor);
            response.getWriter().write("success");
        } catch (ParseException ex) {
            Logger.getLogger(AddDebtorServlet.class.getName()).log(Level.SEVERE, null, ex);
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

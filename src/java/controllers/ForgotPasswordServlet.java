/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import dal.UserModel;
import entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utilities.EmailSystem;
import utilities.GlobalConstants;
import utilities.TokenGenerator;
import utilities.TokenCache;

/**
 *
 * @author nvash
 */
public class ForgotPasswordServlet extends HttpServlet {

    EmailSystem emailSystem = new EmailSystem();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("forgotPassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        UserModel userModel = new UserModel();

        User u = userModel.getByUsername(username);
        String oldPassword = u.getPassword();

        HashMap<String, Object> data = new HashMap<>();
        data.put("username", u.getUsername());
        data.put("expiry", new Date().getTime() + 1000 * 60 * 30); // 30 minutes
        String text = "Please visit the following link to set a new password (valid for 30 minutes): \nhttp://" + GlobalConstants.HOST + "/reset?token=" + TokenGenerator.generate(data, oldPassword);
        if (!u.getIsConfirmed()) {
            text = "Vui lòng truy cập đường dẫn sau để xác nhận mật khẩu: \nhttp://" + GlobalConstants.HOST + "/verifyacc?token=" + TokenGenerator.generate(data, "ODB_Group1");
            emailSystem.sendEmail("ODB (No-Reply", u.getEmail(), "[ODB] Verify Account", text);
            TokenCache.cacheToken(text);
        }else{
        emailSystem.sendEmail("ODB (No-Reply", u.getEmail(), "[ODB] Password Recovery", text);

        TokenCache.cacheToken(text);       
        }
        response.sendRedirect(".");
    }

}

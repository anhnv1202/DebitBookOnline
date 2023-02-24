/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import dal.UserModel;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.HashMap;
import org.json.JSONObject;
import utilities.GlobalConstants;
import utilities.GoogleReCaptcha;

/**
 *
 * @author nvash
 */
public class CheckAuthServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();

        String captcha = request.getParameter("captcha");
        GoogleReCaptcha gcaptcha = new GoogleReCaptcha(GlobalConstants.GOOGLE_RECAPTCHA_SECRET_KEY);
        UserModel userModel= new UserModel();
        if (gcaptcha.checkCaptcha(captcha)) {
            String getStringToValidUser = userModel.getStringToValidUser(username, password);
            if (getStringToValidUser.equals("confirmed")) {
                out.write("confirmed");

            } else if (getStringToValidUser.equals("not confirmed")) {
                out.write("not confirmed");
            } else {
                out.write("invalid");
            }
        } else {
            out.write("false");
        }

    }

}

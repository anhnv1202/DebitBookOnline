package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import dal.UserModel;
import utilities.GlobalConstants;
import utilities.EmailSystem;
import utilities.TokenCache;
import utilities.TokenGenerator;

@WebServlet(urlPatterns = {"/signup"})
public class SignupServlet extends HttpServlet {
    
    EmailSystem emailSystem = new EmailSystem();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("signUp.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
       
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();
        String email = request.getParameter("email").trim();
        
        HashMap<String, Object> data = new HashMap<>();
        data.put("username", username);
        data.put("expiry", new Date().getTime() + 1000 * 60 * 30);
        UserModel userModel= new UserModel();
        String text = "Vui lòng truy cập đường dẫn sau để xác nhận mật khẩu: \nhttp://" + GlobalConstants.HOST + "/verifyacc?token=" + TokenGenerator.generate(data, GlobalConstants.GLOBAL_GENERATE_KEY);
        TokenCache.cacheToken(text);
        emailSystem.sendEmail("ODB (No-Reply", email, "[ODB] Verify Account", text);
        userModel.createAccount(username, password, email);
        response.sendRedirect(".");
        
    }
}

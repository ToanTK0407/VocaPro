package controller.authController;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "register", value = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Lấy parameters từ form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {

            // Nếu thành công
            request.setAttribute("successMessage", "Registration successful! Please login.");
            request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);

        } catch (Exception e) {
            // Nếu có lỗi
            request.setAttribute("register", true);
            request.setAttribute("registerError", "Registration failed: " + e.getMessage());
            request.setAttribute("name", name); // Giữ lại giá trị đã nhập
            request.setAttribute("email", email);
            request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("register", true);
        request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
    }
}

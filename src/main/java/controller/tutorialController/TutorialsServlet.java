package controller.tutorialController;

import Dao.CategoryDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet (name = "TutorialsServlet", value = "/tutorials")
public class TutorialsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("categories", CategoryDAO.getAllCategories());
        request.getRequestDispatcher("/WEB-INF/views/tutorials/mainScreen.jsp").forward(request, response);
    }
}

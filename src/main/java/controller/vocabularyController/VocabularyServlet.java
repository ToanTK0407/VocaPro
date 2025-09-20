package controller.vocabularyController;

import Dao.CategoryDAO;
import Dao.WordDAO;
import Model.Category;
import Model.Word;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet (name = "VocabularyServlet", value = "/vocabulary")
public class VocabularyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categories = CategoryDAO.getAllCategories();
        List<Word> words = WordDAO.getAllWords();

        request.setAttribute("categories", categories);
        request.setAttribute("words", words);
        request.getRequestDispatcher("/WEB-INF/views/vocabulary/mainScreen.jsp").forward(request, response);

    }
}

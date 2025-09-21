package controller.vocabularyController;

import Dao.CategoryDAO;
import Dao.WordDAO;
import Model.Category;
import Model.Word;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "VocabularyServlet", value = "/vocabulary")
public class VocabularyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Category> categories = CategoryDAO.getAllCategories();
        List<Word> words = new ArrayList<>();
        int categoryId = request.getParameter("categoryId") == null ? 0 : Integer.parseInt(request.getParameter("categoryId"));
        request.setAttribute("categoryId", categoryId);
        if (categoryId != 0) {
            WordDAO wordDAO = new WordDAO();
            words = wordDAO.getWordsByCategory(categoryId);

        } else {
            words = WordDAO.getAllWords();
        }
//        words.sort((o1, o2) -> Integer.compare(o1.getCategoryId(), o2.getCategoryId()));
        int totalPages = (words.size() / 10) + 1;
        int currentPage = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
        int currentIndex = 0;
        for (int pageNumber = 1; pageNumber < currentPage; pageNumber++) {
            currentIndex += 10;
        }

        if (currentPage == totalPages) {
            List<Word> pageWords = words.subList(currentIndex, words.size());
            request.setAttribute("pageWords", pageWords);
        } else {
            List<Word> pageWords = words.subList(currentIndex, currentIndex + 10);
            request.setAttribute("pageWords", pageWords);
        }

        request.setAttribute("categories", categories);
        request.setAttribute("words", words);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);

        request.getRequestDispatcher("/WEB-INF/views/vocabulary/mainScreen.jsp").forward(request, response);

    }
}

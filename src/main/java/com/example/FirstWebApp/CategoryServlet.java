package com.example.FirstWebApp;

import com.company.Main.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet(name = "CategoryServlet", value = "/categories")
public class CategoryServlet extends HttpServlet {
    private static final long serialVersionUIL = 1L;

    public CategoryServlet() {
        super();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Category> categoryArrayList = Category.getCategoryList();
        request.setAttribute("categoryList", categoryArrayList);
        getServletContext().getRequestDispatcher("/categories.jsp").forward(request, response);
    }
}

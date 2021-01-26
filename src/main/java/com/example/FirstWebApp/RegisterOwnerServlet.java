package com.example.FirstWebApp;

import com.company.Main.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

@WebServlet(name = "RegisterOwnerServlet", value = "/register-owner")
public class RegisterOwnerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String restaurantName = request.getParameter("restaurantName");
        int location_id = Integer.parseInt(request.getParameter("location"));
        String phone = request.getParameter("phone");
        int category_id = Integer.parseInt(request.getParameter("category"));

        RestaurantOwner owner = null;
        try {
            owner = new RestaurantOwner(email, name, password);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        assert owner != null;
        try {
            Register.RestaurantAndOwner(owner, restaurantName, phone, location_id, category_id);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        User user = RestaurantOwner.login(email, password);
        request.getSession(true).setAttribute("user", user);
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Location> locationArrayList = Location.getLocationList();
        ArrayList<Category> categoryArrayList = Category.getCategoryList();
        Object user = session.getAttribute("user");
        if (user != null) {
            getServletContext().getRequestDispatcher("/login").include(request, response);
        }
        else {
            request.setAttribute("locationList", locationArrayList);
            request.setAttribute("categoryList", categoryArrayList);
            getServletContext().getRequestDispatcher("/register-owner.jsp").include(request, response);
        }
    }
}

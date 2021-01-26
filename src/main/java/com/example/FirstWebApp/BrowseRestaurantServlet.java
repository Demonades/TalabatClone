package com.example.FirstWebApp;

import com.company.Main.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "BrowseRestaurantServlet", value ="/browseRestaurant")

public class BrowseRestaurantServlet extends HttpServlet {
    private static final long serialVersionUIL = 1L;
    public BrowseRestaurantServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("fe ayyy?");
        ArrayList<Restaurant> restaurantArrayList = Restaurant.getRestaurantListAll();
        request.setAttribute("restaurantList", restaurantArrayList);
        getServletContext().getRequestDispatcher("/browseRestaurants.jsp").forward(request, response);
    }
}

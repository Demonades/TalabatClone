package com.example.FirstWebApp;

import com.company.Main.Meal;
import com.company.Main.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DisplayRestaurantServlet", value = "/displayRestaurant")
public class DisplayRestaurantServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int restaurantId = Integer.parseInt(request.getParameter("restaurantId"));
        Restaurant selectedRestaurant = null;
        for(Restaurant restaurant: Restaurant.getRestaurantListAll()){
            if(restaurantId == restaurant.getRestaurant_id()){
                selectedRestaurant = restaurant;
            }
        }
        ArrayList<Meal> mealArrayList = Meal.getMealList(selectedRestaurant);
        request.setAttribute("mealList", mealArrayList);
        request.setAttribute("restaurant", selectedRestaurant);
        getServletContext().getRequestDispatcher("/displayRestaurant.jsp").forward(request, response);
    }
}

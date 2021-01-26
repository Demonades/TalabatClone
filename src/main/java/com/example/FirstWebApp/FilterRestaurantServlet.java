package com.example.FirstWebApp;

import com.company.Main.Category;
import com.company.Main.Location;
import com.company.Main.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "FilterRestaurantServlet", urlPatterns = {"/displayCategory", "/displayLocation"})
public class FilterRestaurantServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Restaurant> restaurantArrayList = new ArrayList<>();
        //HANDLE CATEGORY REQUEST
        if(request.getParameter("categoryId") != null) {
            int categoryId = Integer.parseInt(request.getParameter("categoryId"));
            String categoryName = "";
            for (Category category : Category.getCategoryList()) {
                if (categoryId == category.getCategory_id()) {
                    categoryName = category.getCategory_name();
                }
            }
            restaurantArrayList = Restaurant.getCategorizedRestaurants(categoryId);
            request.setAttribute("categoryName", categoryName);
        }

        //HANDLE LOCATION REQUEST
        if(request.getParameter("locationId") != null) {
            int locationId = Integer.parseInt(request.getParameter("locationId"));
            String locationName = "";
            for (Location location: Location.getLocationList()) {
                if (locationId == location.getLocation_id()) {
                    locationName = location.getLocation_name();
                }
            }
            restaurantArrayList = Restaurant.getRestaurantsInLocation(locationId);
            request.setAttribute("locationName", locationName);
        }
        request.setAttribute("restaurantList", restaurantArrayList);
        getServletContext().getRequestDispatcher("/filteredRestaurants.jsp").forward(request, response);
    }
}

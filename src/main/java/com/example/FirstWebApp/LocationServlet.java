package com.example.FirstWebApp;

import com.company.Main.Category;
import com.company.Main.Location;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "LocationServlet", value = "/locations")
public class LocationServlet extends HttpServlet {
    private static final long serialVersionUIL = 1L;

    public LocationServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Location> locationArrayList = Location.getLocationList();
        request.setAttribute("locationList", locationArrayList);
        getServletContext().getRequestDispatcher("/locations.jsp").forward(request, response);
    }
}

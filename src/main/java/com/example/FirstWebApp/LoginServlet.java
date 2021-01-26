package com.example.FirstWebApp;

import com.company.Main.Customer;
import com.company.Main.RestaurantOwner;
import com.company.Main.User;
import com.company.Main.ValidateLogin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUIL = 1L;

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (email != null && password != null && ValidateLogin.user(email, password)) {

            User user = Customer.login(email, password);
            //add restaurant owner and check whoever is not null to return
            if (user == null) {
                user = RestaurantOwner.login(email, password);
            }
            request.getSession(true).setAttribute("user", user);
            doGet(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");
        if (user != null) {
            getServletContext().getRequestDispatcher("/index").include(request, response);
            if (user instanceof RestaurantOwner) {
                if (((RestaurantOwner) user).getApproved() == 0) {
                    request.getSession().invalidate();
                    getServletContext().getRequestDispatcher("/pendingApproval.jsp").include(request, response);
                }
                else {
                    response.sendRedirect("/manage-restaurant");
                }
            }
            else {
                response.sendRedirect("/browseRestaurant");
            }
        }
        else {
            getServletContext().getRequestDispatcher("/login.jsp").include(request, response);
        }
    }
}
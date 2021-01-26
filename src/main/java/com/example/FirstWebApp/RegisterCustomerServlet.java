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

@WebServlet(name = "RegisterCustomerServlet", value = "/register-customer")
public class RegisterCustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (email != null && password != null && name != null) {
            Customer customer = null;
            try {
                customer = new Customer(email, name, password);
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            assert customer != null;
            customer.insertIntoDB();
            User user = Customer.login(email, password);
            if (user != null) {
                request.getSession(true).setAttribute("user", user);
                doGet(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");
        if (user != null) {
            getServletContext().getRequestDispatcher("/index").include(request, response);
        } else {
            getServletContext().getRequestDispatcher("/register-customer.jsp").include(request, response);
        }
    }
}

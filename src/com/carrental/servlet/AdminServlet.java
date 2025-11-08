// Path: src/com/carrental/servlet/AdminServlet.java

package com.carrental.servlet;

import com.carrental.model.Rental;
import com.carrental.util.XmlDataService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class AdminServlet extends HttpServlet {

    private XmlDataService dataService = new XmlDataService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Get all rental records from the XML file
        List<Rental> rentalList = dataService.getAllRentals(getServletContext());

        // 2. Set the list as an attribute to be read by the JSP
        request.setAttribute("rentalList", rentalList);

        // 3. Forward the request to the new admin.jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
        dispatcher.forward(request, response);
    }
}
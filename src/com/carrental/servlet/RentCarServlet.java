// Path: src/com/carrental/servlet/RentCarServlet.java

package com.carrental.servlet;

import com.carrental.model.Car;
import com.carrental.model.Rental;
import com.carrental.util.XmlDataService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class RentCarServlet extends HttpServlet {

    private XmlDataService dataService = new XmlDataService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Get form data
        String carId = request.getParameter("carId");
        String customerName = request.getParameter("customerName");
        int rentDays = Integer.parseInt(request.getParameter("rentDays"));

        // 2. Get car details
        Car car = dataService.getCarById(getServletContext(), carId);
        if (car == null || !car.isAvailable()) {
            // Handle error - car not found or already rented
            response.sendRedirect("viewCars"); // Redirect back to list
            return;
        }

        // 3. Calculate total rent
        double totalRent = car.getRentPerDay() * rentDays;

        // 4. Update car availability in cars.xml
        dataService.updateCarAvailability(getServletContext(), carId, false);

        // 5. Create Rental object and save to rentals.xml
        Rental rental = new Rental();
        rental.setCarId(carId);
        rental.setCustomerName(customerName);
        rental.setRentDays(rentDays);
        rental.setTotalRent(totalRent);
        dataService.addRental(getServletContext(), rental);

        // 6. Set attributes for confirmation page
        request.setAttribute("customerName", customerName);
        request.setAttribute("carModel", car.getBrand() + " " + car.getModel());
        request.setAttribute("rentDays", rentDays);
        request.setAttribute("totalRent", totalRent);

        // 7. Forward to confirm.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("confirm.jsp");
        dispatcher.forward(request, response);
    }
}
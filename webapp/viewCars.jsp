<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.carrental.model.Car" %>
<html>
<head>
    <title>Available Cars</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h1 class="display-6">Available Cars for Rent</h1>
            <a href="index.jsp" class="btn btn-outline-secondary">&laquo; Back to Home</a>
        </div>

        <div class="card shadow-sm">
            <div class="card-body p-0">
                <table class="table table-hover table-striped mb-0">
                    <thead class="table-dark">
                        <tr>
                            <th>Brand</th>
                            <th>Model</th>
                            <th>Type</th>
                            <th>Rent/Day</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Car> carList = (List<Car>) request.getAttribute("carList");
                            if (carList != null && !carList.isEmpty()) {
                                for (Car car : carList) {
                        %>
                            <tr class="align-middle">
                                <td><%= car.getBrand() %></td>
                                <td><%= car.getModel() %></td>
                                <td><span class="badge bg-secondary"><%= car.getType() %></span></td>
                                <td>$<%= String.format("%.2f", car.getRentPerDay()) %></td>
                                <% if (car.isAvailable()) { %>
                                    <td><span class="badge bg-success">Available</span></td>
                                    <td>
                                        <a href="rentCar.jsp?carId=<%= car.getId() %>" class="btn btn-primary btn-sm">Rent Now</a>
                                    </td>
                                <% } else { %>
                                    <td><span class="badge bg-danger">Rented</span></td>
                                    <td>
                                        <button class="btn btn-secondary btn-sm" disabled>Unavailable</button>
                                    </td>
                                <% } %>
                            </tr>
                        <%
                                }
                            } else {
                        %>
                            <tr>
                                <td colspan="6" class="text-center p-4">No cars found.</td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
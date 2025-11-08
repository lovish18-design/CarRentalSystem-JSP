<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.carrental.model.Rental" %>
<html>
<head>
    <title>Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="card shadow">
                <div class="card-header bg-dark text-white d-flex justify-content-between align-items-center">
                    <h1 class="h4 mb-0">Admin Panel — Rented Cars</h1>
                    <a href="index.jsp" class="btn btn-light btn-sm">&laquo; Back to Home</a>
                </div>
                <div class="card-body">
                    <%
                        List<Rental> rentalList = (List<Rental>) request.getAttribute("rentalList");
                        if (rentalList == null || rentalList.isEmpty()) {
                    %>
                    <div class="alert alert-info" role="alert">
                        No cars have been rented yet.
                    </div>
                    <%
                    } else {
                    %>
                    <table class="table table-striped table-bordered">
                        <thead class="table-secondary">
                        <tr>
                            <th>Car ID</th>
                            <th>Customer Name</th>
                            <th>Days Rented</th>
                            <th>Total Rent</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            for (Rental rental : rentalList) {
                        %>
                        <tr>
                            <td><%= rental.getCarId() %></td>
                            <td><%= rental.getCustomerName() %></td>
                            <td><%= rental.getRentDays() %></td>
                            <td>$<%= String.format("%.2f", rental.getTotalRent()) %></td>
                        </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
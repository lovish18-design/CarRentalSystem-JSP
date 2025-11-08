<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rent a Car</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow">
                    <div class="card-header">
                        <h1 class="h4 mb-0">Rental Form</h1>
                    </div>
                    <div class="card-body">
                        <p class="lead">You are renting car ID: <strong class="text-primary"><%= request.getParameter("carId") %></strong></p>

                        <form action="rentCar" method="POST">
                            <input type="hidden" name="carId" value="<%= request.getParameter("carId") %>" />

                            <div class="mb-3">
                                <label for="customerName" class="form-label">Your Name:</label>
                                <input type="text" id="customerName" name="customerName" class="form-control" required>
                            </div>

                            <div class="mb-3">
                                <label for="rentDays" class="form-label">Number of Days:</label>
                                <input type="number" id="rentDays" name="rentDays" class="form-control" min="1" value="1" required>
                            </div>

                            <button type="submit" class="btn btn-success w-100">Confirm Rental</button>
                        </form>
                    </div>
                    <div class="card-footer text-center">
                         <a href="viewCars" class="btn btn-link btn-sm">&laquo; Cancel and Go Back</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rental Confirmation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="bg-light d-flex vh-100 align-items-center justify-content-center">
    <div class="container">
       <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow text-center border-success">
                    <div class="card-header bg-success text-white">
                         <h1 class="h3 mb-0">✅ Rental Confirmed!</h1>
                    </div>
                    <div class="card-body p-4">
                        <p class="lead">Thank you, <strong class="text-success"><%= request.getAttribute("customerName") %></strong>.</p>
                        <p>You have successfully rented the <strong><%= request.getAttribute("carModel") %></strong> for <strong><%= request.getAttribute("rentDays") %></strong> days.</p>
                        <hr>
                        <p class="h4">Your total is: <strong class="text-dark">$<%= String.format("%.2f", (Double)request.getAttribute("totalRent")) %></strong></p>
                    </div>
                    <div class="card-footer bg-white">
                        <a href="viewCars" class="btn btn-primary">View All Cars</a>
                        <a href="index.jsp" class="btn btn-outline-secondary">Back to Home</a>
                    </div>
                </div>
            </div>
       </div>
    </div>
</body>
</html>
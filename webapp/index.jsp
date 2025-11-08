<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome - Car Rental System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous">
    <style>
        /* Helper styles for full-page centering */
        body, html {
            height: 100%;
        }
    </style>
</head>
<body class="d-flex vh-100 align-items-center justify-content-center bg-light">

<div class="container text-center">
    <h1 class="display-4 fw-bold">🚗 Welcome to the Car Rental System</h1>
    <p class="lead my-4">Your one-stop solution for renting the best cars.</p>
    <div>
        <a href="viewCars" class="btn btn-primary btn-lg m-2">View Available Cars</a>
        <a href="admin" class="btn btn-success btn-lg m-2">Admin Panel</a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
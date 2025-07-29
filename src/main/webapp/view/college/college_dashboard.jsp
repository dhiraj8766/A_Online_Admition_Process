<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>College Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            background-color: #f0f2f5;
        }

        .container {
            padding: 30px;
            max-width: 1200px;
            margin: auto;
        }

        h1 {
            color: #2e86de;
            text-align: center;
            margin-top: 30px;
        }

        .cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 40px;
        }

        .card {
            background: white;
            width: 250px;
            padding: 20px;
            margin: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .card h3 {
            color: #333;
        }

        .card a {
            text-decoration: none;
            color: #2e86de;
            display: inline-block;
            margin-top: 10px;
        }

        .card a:hover {
            color: #1b4f72;
        }
    </style>
</head>
<body>

<jsp:include page="college_navbar.jsp" />

<div class="container">
    <h1>Welcome to College Dashboard</h1>

    <div class="cards">
        <div class="card">
            <h3>Students</h3>
            <a href="viewAllStudentsPage">View All</a>
        </div>
        <div class="card">
            <h3>Enquiries</h3>
            <a href="/AllEnquiry">Manage Enquiries</a>
        </div>

    </div>
</div>

</body>
</html>

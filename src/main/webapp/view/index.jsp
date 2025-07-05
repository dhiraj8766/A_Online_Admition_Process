<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Admission System</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: #f4f6f9;
        }



        header h1 {
            font-size: 32px;
            letter-spacing: 1px;
        }

        .container {
            max-width: 1100px;
            margin: 50px auto;
            padding: 0 20px;
            text-align: center;
        }

        .notice-board {
            background: #fff8e1;
            border-left: 5px solid #f1c40f;
            padding: 20px;
            margin-bottom: 40px;
            border-radius: 8px;
            font-size: 18px;
        }

        .cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }

        .card {
            background: #ffffff;
            border-radius: 15px;
            padding: 30px;
            width: 250px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
            transition: all 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.15);
        }

        .card h3 {
            font-size: 20px;
            margin-bottom: 15px;
            color: #2e86de;
        }

        .card a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #2e86de;
            color: #fff;
            text-decoration: none;
            border-radius: 8px;
            transition: background 0.3s ease;
        }

        .card a:hover {
            background-color: #1b4f72;
        }

        footer {
            margin-top: 190px;
            background: #2e86de;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            font-size: 14px;
        }

        @media (max-width: 768px) {
            .cards {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>
<jsp:include page="mod/navbar.jsp" />


<div class="container">
    <div class="notice-board">
        <strong>Notice:</strong> Admissions for 2025-26 are now open. Please register early!
    </div>

    <div class="cards">
        <div class="card">
            <h3>Student Registration</h3>
            <a href="registration">Register</a>
        </div>

        <div class="card">
            <h3>Student Login</h3>
            <a href="student_login">Login</a>
        </div>

        <div class="card">
            <h3>College Login</h3>
            <a href="college_login">Login</a>
        </div>
    </div>
</div>

<footer>
    &copy; 2025 Online Admission System. All rights reserved.
</footer>

</body>
</html>

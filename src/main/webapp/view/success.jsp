<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful - Online Admission System</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 2em;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1em;
            margin-bottom: 30px;
        }

        a.button {
            display: inline-block;
            padding: 12px 25px;
            background-color: #ffffff;
            color: #2575fc;
            font-weight: bold;
            text-decoration: none;
            border-radius: 25px;
            transition: background-color 0.3s, color 0.3s;
        }

        a.button:hover {
            background-color: #2575fc;
            color: #ffffff;
        }
    </style>
</head>
<body>

<jsp:include page="mod/navbar.jsp" />

<div class="container">
    <h1>✅ Registration Successful!</h1>
    <p>Your registration has been completed successfully.</p>
    <a href="student_login" class="button">Go to Login Page</a>
</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>College Login - Online Admission System</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
            padding: 40px;
        }

        .container {
            max-width: 400px;
            margin: auto;
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #2e86de;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin: 15px 0 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .btn {
            margin-top: 25px;
            background-color: #2e86de;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 6px;
            width: 100%;
        }

        .btn:hover {
            background-color: #1b4f72;
        }
    </style>
</head>
<body>

<jsp:include page="mod/navbar.jsp" />

<div class="container">
    <h2>College Login</h2>
    <form action="student_login_action" method="get">
        <label for="email">College ID:</label>
        <input type="text" name="email" id="email" required>

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required>

        <button type="submit" class="btn">Login</button>
    </form>
</div>
</body>
</html>

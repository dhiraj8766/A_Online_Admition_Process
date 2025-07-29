<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home - Online Admission System</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            margin: 0;
            padding-top: 70px; /* Push content below navbar */
        }

        .navbar {
            width: 100%;
            background-color: #333;
            position: fixed;
            top: 0;
            left: 0;
            padding: 15px 30px;
            z-index: 1000;
        }

        .navbar a {
            color: white;
            margin-right: 20px;
            text-decoration: none;
            font-weight: 500;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        .main-content {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 70px);
        }

        .home-container {
            background: #fff;
            padding: 40px 50px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 500px;
        }

        h1 {
            color: #333;
            margin-bottom: 15px;
        }

        .msg {
            font-size: 18px;
            color: #555;
            margin-bottom: 25px;
        }

        .btn {
            display: inline-block;
            margin-top: 15px;
            background-color: #007bff;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 8px;
            font-size: 15px;
            font-weight: bold;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<jsp:include page="student_navbar.jsp" />

<div class="main-content">
    <div class="home-container">
        <h1>Welcome, ${student.name}!</h1>
        <div class="msg">This is your student dashboard. Access your profile and enquiries here.</div>

        <a href="/MyProfile?sid=${student.sid}" class="btn">My Profile</a>
        <br><br>
        <a href="/Enquiry?sid=${student.sid}" class="btn">Make an Enquiry</a>
        <br><br>
        <a href="/myEnquiry?sid=${student.sid}" class="btn">View My Enquiries</a>
    </div>
</div>

</body>
</html>

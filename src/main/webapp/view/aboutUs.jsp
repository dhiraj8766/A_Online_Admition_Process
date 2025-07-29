<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #ece9e6, #ffffff);
            color: #333;
        }

        .navbar {
            background-color: #2c3e50;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-weight: 500;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        .hero {
            background: url('https://images.unsplash.com/photo-1605902711622-cfb43c4437d3?auto=format&fit=crop&w=1350&q=80') no-repeat center center/cover;
            height: 300px;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .hero h1 {
            font-size: 3em;
            background-color: rgba(0, 0, 0, 0.5);
            padding: 20px 40px;
            border-radius: 10px;
        }

        .container {
            max-width: 1100px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .section {
            margin-bottom: 50px;
        }

        .section h2 {
            color: #2c3e50;
            margin-bottom: 20px;
            border-left: 5px solid #3498db;
            padding-left: 15px;
        }

        .section p {
            font-size: 1.1em;
            line-height: 1.8;
        }

        .footer {
            background-color: #2c3e50;
            color: #fff;
            padding: 20px 30px;
            text-align: center;
            margin-top: 60px;
        }
    </style>
</head>
<body>

<jsp:include page="mod/navbar.jsp" />
<!-- Navbar -->


<!-- Hero Section -->
<div class="hero">
    <h1>About Us</h1>
</div>

<!-- Main Content -->
<div class="container">
    <div class="section">
        <h2>Who We Are</h2>
        <p>
            <!-- Add your introduction here -->
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut dignissim nisl, at aliquam justo.
        </p>
    </div>

    <div class="section">
        <h2>Our Mission</h2>
        <p>
            <!-- Add your mission here -->
            We aim to simplify the admission process for both students and institutions by providing a smart, secure, and scalable platform.
        </p>
    </div>

    <div class="section">
        <h2>Why Choose Us</h2>
        <p>
            <!-- Add your USPs here -->
            Our platform ensures transparency, reduces paperwork, and enables seamless interaction between students and colleges.
        </p>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    &copy; 2025 Online Admission System | All rights reserved.
</div>

</body>
</html>

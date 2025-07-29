<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enquiry Success</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f0f8ff;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 90vh;
            margin: 0;
        }

        .success-box {
            background-color: #ffffff;
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 500px;
        }

        h1 {
            color: #28a745;
            font-size: 28px;
            margin-bottom: 20px;
        }

        .btn-home {
            display: inline-block;
            padding: 12px 25px;
            margin-top: 20px;
            font-size: 16px;
            color: white;
            background-color: #007bff;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .btn-home:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="success-box">
    <h1>✅ Enquiry Sent Successfully!</h1>
    <p>Thank you for your enquiry. We will get back to you soon.</p>
    <a href="/student_home?sid=${student.sid}" class="btn-home">Go to Home</a>
</div>

</body>
</html>

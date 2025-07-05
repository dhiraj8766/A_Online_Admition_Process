<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enquiry Form</title>
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

        .form-container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            width: 400px;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        label {
            font-weight: 600;
            display: block;
            margin-top: 15px;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 14px;
            resize: none;
        }

        textarea {
            height: 100px;
        }

        .btn {
            width: 100%;
            margin-top: 20px;
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<jsp:include page="student_navbar.jsp" />

<!-- Main Form -->
<div class="main-content">
    <div class="form-container">
        <h2>Enquiry Form</h2>
        <form action="/saveEnquiry?sid=${student.sid}" method="post">
            <label for="sid">SID :</label>
            <input type="text" id="sid" name="sid" readonly="readonly" value="${student.sid}" required>

            <label for="enquiry_message">Message:</label>
            <textarea id="enquiry_message" name="enquiry_message" placeholder="Write your message..." required></textarea>

            <label for="enquiry_date">Date:</label>
            <input type="date" id="enquiry_date" name="enquiry_date" required>

            <label for="enquiry_remark">Remark:</label>
            <input type="text" id="enquiry_remark" name="enquiry_remark" placeholder="Additional remarks">

            <button type="submit" class="btn">Send</button>
        </form>
    </div>
</div>

</body>
</html>

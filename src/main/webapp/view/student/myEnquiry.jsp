<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.online_admission_process.creation.Entites.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Enquiries</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            margin: 0;
            padding-top: 70px;
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
            padding: 40px;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            overflow: hidden;
        }

        th, td {
            padding: 14px 18px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .no-data {
            text-align: center;
            color: #555;
            padding: 20px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

<jsp:include page="student_navbar.jsp" />

<div class="main-content">
    <h2>My Enquiries</h2>

    <%
        List<Enquiry> enquiries = (List<Enquiry>) request.getAttribute("myenquiries");
        if (enquiries == null || enquiries.isEmpty()) {
    %>
    <div class="no-data">
        You have not submitted any enquiries yet.
    </div>
    <%
    } else {
    %>
    <table>
        <thead>
        <tr>
            <th>Enquiry ID</th>
            <th>Subject</th>
            <th>Message</th>
            <th>Date</th>
            <th>Remark</th>
        </tr>
        </thead>
        <tbody>
        <% for (Enquiry e : enquiries) { %>
        <tr>
            <td><%= e.getEnquiry_id() %></td>
            <td><%= e.getSubject() %></td>
            <td><%= e.getEnquiry_message() %></td>
            <td><%= e.getEnquiry_date() %></td>
            <td><%= e.getEnquiry_remark() == null ? "Pending" : e.getEnquiry_remark() %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <%
        }
    %>
</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.online_admission_process.creation.Entites.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Students - Online Admission System</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
            padding: 0px;
        }

        .container {
            max-width: 900px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 0px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #2e86de;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #2e86de;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
<jsp:include page="college_navbar.jsp" />

<div class="container">
    <h2>All Registered Students</h2>

    <table>
        <tr>
            <th>Enquiry id</th>
            <th>Student id</th>
            <th>Student name</th>
            <th>Message</th>
            <th>date</th>
            <th>remark</th>
            <th>Status</th>
            <th>op</th>
        </tr>
        <%
            List<students> studentslist = (List<students>) request.getAttribute("studentsList");
            if (studentslist != null && !studentslist.isEmpty()) {
                for (students s : studentslist) {
        %>
        <tr>
            <td><%= s.getName() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getGender() %></td>
            <td><%= s.getCourse() %></td>
            <td><%= s.getNumber() %></td>
            <td><%= s.getPassword() %></td>
            <td><%= s.getStatus() %></td>
            <td><a href="student_edit?sid=<%= s.getSid() %>">Edit</a> </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="5" style="text-align:center;">No student records found.</td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>

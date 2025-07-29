<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.online_admission_process.creation.Entites.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Enquiries - College</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #fbc2eb, #a6c1ee);
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

        .container {
            margin: 50px auto;
            max-width: 1000px;
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ccc;
            text-align: left;
            vertical-align: top;
        }

        th {
            background-color: #f5f5f5;
            color: #333;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .remark {
            color: #007bff;
            font-weight: 600;
        }

        .reply-form textarea {
            width: 100%;
            padding: 5px;
            border-radius: 5px;
            resize: vertical;
        }

        .reply-form input[type="submit"] {
            margin-top: 5px;
            padding: 5px 10px;
            background-color: #007bff;
            border: none;
            color: white;
            border-radius: 4px;
            cursor: pointer;
        }

        .reply-form input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<jsp:include page="college_navbar.jsp" />

<div class="container">
    <h2>All Student Enquiries</h2>
    <table>
        <tr>
            <th>Enquiry ID</th>
            <th>Student ID</th>
            <th>Subject</th>
            <th>Message</th>
            <th>Date</th>
            <th>Remark</th>
            <th>Reply</th>
        </tr>

        <%
            List<Enquiry> enquiries = (List<Enquiry>) request.getAttribute("allenquiries");
            if (enquiries != null && !enquiries.isEmpty()) {
                for (Enquiry enq : enquiries) {
        %>
        <tr>
            <td><%= enq.getEnquiry_id() %></td>
            <td><%= enq.getSid() %></td>
            <td><%= enq.getSubject() %></td>
            <td><%= enq.getEnquiry_message() %></td>
            <td><%= enq.getEnquiry_date() %></td>
            <td class="remark"><%= enq.getEnquiry_remark() == null ? "No remark yet" : enq.getEnquiry_remark() %></td>
            <td>
                <form action="/addRemark" method="post" class="reply-form">

                    <input type="hidden" name="enquiry_id" value="<%= enq.getEnquiry_id() %>">

                    <textarea name="remark" rows="2" placeholder="Enter your remark here..."></textarea>
                    <input type="submit" value="Submit">
                </form>
            </td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="7" style="text-align: center;">No enquiries found.</td>
        </tr>
        <%
            }
        %>
    </table>
</div>

</body>
</html>

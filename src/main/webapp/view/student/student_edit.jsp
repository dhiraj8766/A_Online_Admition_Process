<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration - Online Admission System</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        /* ----------  GLOBAL  ---------- */
        body{
            font-family:'Poppins',sans-serif;
            background:linear-gradient(to right,#74ebd5,#ACB6E5);
            margin:0;
            padding-top:70px;           /* keeps content below the f    ixed navbar */
        }

        /* ----------  NAVBAR PLACEHOLDER  ---------- */
        .navbar{
            width:100%;
            background:#333;
            position:fixed;
            top:0;left:0;
            padding:15px 30px;
            z-index:1000;
        }
        .navbar a{color:#fff;margin-right:20px;text-decoration:none;font-weight:500;}
        .navbar a:hover{text-decoration:underline;}

        /* ----------  CARD CONTAINER  ---------- */
        .container{
            max-width:640px;
            margin: auto;
            background:#fff;
            padding:45px 50px 35px;
            border-radius:15px;
            box-shadow:0 6px 18px rgba(0,0,0,0.18);
        }

        h2{
            text-align:center;
            margin-top:0;
            margin-bottom:30px;
            color:#2e86de;
        }

        /* ----------  FORM ELEMENTS  ---------- */
        label{
            display:block;
            margin:14px 0 6px;
            font-weight:600;
            color:#333;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"],
        select{
            width:100%;
            padding:11px 12px;
            border:1px solid #ccc;
            border-radius:8px;
            font-size:14px;
            box-sizing:border-box;
        }
        input[type="radio"]{margin-right:8px;}

        .gender-group{margin-top:6px;}

        /* ----------  BUTTON  ---------- */
        .btn{
            margin-top:28px;
            width:100%;
            background:#2e86de;
            color:#fff;
            border:none;
            padding:13px;
            font-size:16px;
            font-weight:600;
            border-radius:8px;
            cursor:pointer;
            transition:background 0.25s;
        }
        .btn:hover{background:#1b4f72;}

        /* ----------  MESSAGE / LINK  ---------- */
        .msg{
            margin-top:18px;
            text-align:center;
            font-size:14px;
            color:#155724;
        }
        .msg a{
            color:#0d6efd;
            text-decoration:none;
        }
        .msg a:hover{text-decoration:underline;}
    </style>
</head>
<body>

<!-- Your existing navbar file -->
<jsp:include page="student_navbar.jsp" />

<div class="container">
    <h2>Student Registration</h2>

    <!-- When editing, action points to your controller with sid -->
    <form action="MyProfileEdit?sid=${student.sid}" method="post">

        <label for="name">Full Name:</label>
        <input type="text" id="name" name="name" value="${student.name}" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${student.email}" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value="${student.password}" required>

        <label>Gender:</label>
        <div class="gender-group">
            <input type="radio" name="gender" value="Male"   ${student.gender == 'Male'   ? 'checked' : ''}> Male
            <input type="radio" name="gender" value="Female" ${student.gender == 'Female' ? 'checked' : ''}> Female
            <input type="radio" name="gender" value="Other"  ${student.gender == 'Other'  ? 'checked' : ''}> Other
        </div>

        <label for="course">Course:</label>
        <select id="course" name="course" required>
            <option value="">-- Select Course --</option>
            <option value="B.Tech" ${student.course == 'B.Tech' ? 'selected' : ''}>B.Tech</option>
            <option value="M.Tech" ${student.course == 'M.Tech' ? 'selected' : ''}>M.Tech</option>
            <option value="MBA"    ${student.course == 'MBA'   ? 'selected' : ''}>MBA</option>
            <option value="BCA"    ${student.course == 'BCA'   ? 'selected' : ''}>BCA</option>
        </select>

        <label for="number">Contact Number:</label>
        <input type="text" id="number" name="number" value="${student.number}" required>

        <label for="status">Status:</label>
        <select id="status" name="status" required>
            <!-- Add more statuses if needed -->
            <option value="Approved" ${student.status == 'Approved' ? 'selected' : ''}>Approved</option>
        </select>

        <button type="submit" class="btn">Modify</button>

        <!-- Optional status / success message -->
        <div class="msg">
            ${msg} <c:if test="${not empty msg}">
            &nbsp;|&nbsp; <a href="student_login">Go to login</a>
        </c:if>
        </div>
    </form>
</div>

</body>
</html>

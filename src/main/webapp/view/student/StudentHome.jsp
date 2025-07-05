<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home - Online Admission System</title>

</head>
<body>

<jsp:include page="student_navbar.jsp" />
<h1>Student Home</h1>
<h2> <div class="msg"> Wellcome   ${student.name}</div></h2>
<a href="/MyProfile?sid=${student.sid}">Profile</a>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
    .navbar {
        background-color: #2e86de;
        overflow: hidden;
        padding: 14px 20px;
    }

    .navbar a {
        float: left;
        color: white;
        text-align: center;
        padding: 12px 16px;
        text-decoration: none;
        font-weight: 600;
    }

    .navbar a:hover {
        background-color: #1b4f72;
        color: white;
    }

    .navbar-right {
        float: right;
    }
</style>

<div class="navbar">
    <a href="college_home">Home</a>
    <a href="/viewAllStudentsPage">Students</a>
    <a href="/AllEnquiry">Students Enquirys</a>
    <a href="faculty_list.jsp">Faculty</a>
    <a href="admission_list.jsp">Admissions</a>
    <div class="navbar-right">
        <a href="home">Logout</a>
    </div>
</div>

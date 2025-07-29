<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- navbar.jsp -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
<style>
    nav {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        z-index: 999;
        background-color: #2e86de;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 15px 30px;
        font-family: 'Poppins', sans-serif;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .nav-title {
        color: #fff;
        font-size: 24px;
        font-weight: 600;
        text-decoration: none;
    }

    .nav-links {
        display: flex;
        gap: 20px;
    }

    .nav-links a {
        color: white;
        text-decoration: none;
        font-weight: 500;
        padding: 8px 14px;
        border-radius: 6px;
        transition: background 0.3s;
    }

    .nav-links a:hover {
        background-color: #1b4f72;
    }

    @media (max-width: 768px) {
        nav {
            flex-direction: column;
            align-items: flex-start;
        }

        .nav-links {
            flex-direction: column;
            width: 100%;
        }

        .nav-links a {
            width: 100%;
        }
    }

    body {
        padding-top: 80px; /* Add top padding to avoid overlap */
    }
</style>

<nav>
    <a href="home" class="nav-title">Online Admission</a>
    <div class="nav-links">
        <a href="home">Home</a>
        <a href="registration">Register</a>
        <a href="student_login">Student Login</a>
        <a href="college_login">College Login</a>
        <a href="/about_us">About us</a>
    </div>
</nav>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.HttpServlet" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ashish Computer Institute</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/home.css">
    
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        /* Header styling */
        header {
            background-color: #444;
            color: white;
            text-align: center;
            padding: 20px 0;
        }

        header h1 {
            font-size: 2.5rem;
        }

        /* Banner Section */
        .hero {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 100px;
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        /* Banner Container */
        .banner-container {
            text-align: center;
            position: relative;
            width: 100%;
            max-width: 100%;
        }

        /* Banner Image Styling */
        .banner-image {
            width: 100%;
            height: 400px;
            object-fit: cover;
            position: absolute;
            top: 0;
            left: 0;
            animation: slide 15s infinite;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }

        /* Keyframes for sliding effect */
        @keyframes slide {
            0% { opacity: 0; }
            10% { opacity: 1; }
            33% { opacity: 1; }
            43% { opacity: 0; }
        }

        /* Banner Text Styling */
        .banner-text {
            position: absolute;
            top: 70%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #333;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
            z-index: 2;
        }

        .banner-text h1 {
            font-size: 45px;
            margin: 0 20px;
        }

        .banner-text p {
            font-size: 35px;
            margin-top: 10px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .banner-image {
                max-width: 100%;
                height: 300px;
            }

            .banner-text h1 {
                font-size: 24px;
            }

            .banner-text p {
                font-size: 14px;
            }
        }

        /* Carousel Section */
        .carousel-container {
            width: 100%;
            overflow: hidden;
            background-color: #2c3e50;
            padding: 20px 0;
        }

        .carousel {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .carousel-item {
            flex: 0 0 33.333%;
            padding: 10px;
            text-align: center;
            color: #fff;
        }

        .carousel-item img {
            width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .carousel-item h3 {
            margin-top: 10px;
            font-size: 18px;
            color: #ffa500;
        }

        .carousel-item p {
            font-size: 14px;
            margin: 5px 0;
        }

        /* Enquiry Form Styling */
        .enquiry-form-container {
            position: fixed;
            top: 60%;
            right: 20px;
            transform: translateY(-50%);
            width: 200px;
            background-color: #ffffff;
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        .enquiry-form-container h2 {
            text-align: center;
            font-size: 1.5em;
            color: #004080;
            margin-bottom: 10px;
        }

        .enquiry-form-container form input,
        .enquiry-form-container form textarea,
        .enquiry-form-container form button {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 0.9em;
        }

        .enquiry-form-container form button {
            background-color: #004080;
            color: white;
            border: none;
            cursor: pointer;
        }

        .enquiry-form-container form button:hover {
            background-color: #003366;
        }

        /* Footer styling */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 20px;
        }

        /* Director and About Us */
        .container {
            display: flex;
            justify-content: space-around;
            padding: 40px;
        }

        .card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 45%;
        }

        .card h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        .card h2::after {
            content: '';
            display: block;
            width: 50px;
            height: 4px;
            background-color: orange;
            margin-top: 8px;
        }

        .card p {
            line-height: 1.6;
            color: #555;
        }

        /* Partners Section */
        .partners-section {
            text-align: center;
            padding: 40px;
        }

        .partners-section h2 {
            color: #fdd835;
            margin-bottom: 20px;
        }

        .carousel img {
            width: 250px;
            height: 100px;
            margin: 0 10px;
            border-radius: 15px;
            background: white;
            padding: 5px;
        }

    </style>
</head>
<body>
    <header>
        <h1>Ashish Computer Institute</h1>
    </header>
    
    <jsp:include page="/navfile.jsp" />

    <section id="home" class="hero">
        <div class="banner-container">
            <img src="<%= request.getContextPath() %>/image/class_image_1.jpg" alt="Banner" class="banner-image" style="animation-delay: 0s;">
            <img src="<%= request.getContextPath() %>/image/class_image_2.jpg" alt="Banner" class="banner-image" style="animation-delay: 5s;">
            <img src="<%= request.getContextPath() %>/image/class_image_3.jpeg" alt="Banner" class="banner-image" style="animation-delay: 10s;">
            <div class="banner-text">
                <h1>Welcome to ASHISH COMPUTER INSTITUTE & LIBRARY</h1>
                <p>MY INSTITUTE PROVIDES THE BEST EDUCATION IN INFORMATION TECHNOLOGY</p>
            </div>
        </div>
    </section>

    <div class="carousel-container">
        <div class="carousel">
            <div class="carousel-item">
                <img src="<%= request.getContextPath() %>/image/banner 1.1.jpg" alt="NIELIT Courses">
                <h3>NIELIT COURSES</h3>
                <p>National Institute of Electronics and Information Technology</p>
            </div>
            <div class="carousel-item">
                <img src="https://via.placeholder.com/400x150" alt="Short Term Courses">
                <h3>SHORT TERM COURSES</h3>
                <p>Best Computer Courses for Students</p>
            </div>
            <div class="carousel-item">
                <img src="https://via.placeholder.com/400x150" alt="Tally Courses">
                <h3>TALLY COURSE</h3>
                <p>Tally ERP with GST - Basic to Advanced</p>
            </div>
        </div>
    </div>

    <div class="enquiry-form-container">
        <h2>Enquiry Form</h2>
        <form action="submitEnquiry.jsp" method="post">
            <label for="name">Your Name:</label>
            <input type="text" id="name" name="name" required>
            <label for="email">Your Email:</label>
            <input type="email" id="email" name="email" required>
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required>
            <label for="message">Your Message:</label>
            <textarea id="message" name="message" rows="3" required></textarea>
            <button type="submit">Submit</button>
        </form>
    </div>

    <div class="container">
        <div class="card">
            <h2>About Us</h2>
            <p>Ashish Computer Institute is dedicated to providing top-quality education in Information Technology...</p>
        </div>
        <div class="card">
            <h2>Director's Message</h2>
            <p>Our vision is to empower students with the knowledge and skills needed for a successful career in IT...</p>
        </div>
    </div>

    <div class="partners-section">
        <h2>Our Partners</h2>
        <div class="carousel">
            <img src="https://via.placeholder.com/250x100" alt="Partner 1">
            <img src="https://via.placeholder.com/250x100" alt="Partner 2">
            <img src="https://via.placeholder.com/250x100" alt="Partner 3">
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Ashish Computer Institute. All rights reserved.</p>
    </footer>
</body>
</html>

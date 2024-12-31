<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jakarta.servlet.http.HttpServlet" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ashish Computer Institute</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/home.css">
	

</head>

      <style>
      
      </style>

<body>
    <header>
        
    </header>
    <jsp:include page="navfile.jsp" />
   
    <section id="home" class="hero">
    <div class="banner-container">
        <div class="banner-text">
            <h1>Welcome to ASHISH COMPUTER INSTITUTE & LIBRARY</h1>
            <p>MY INSTITUTE PROVIDE BEST EDUCATION IN INFORMATION TECHONOLOGY</p>
        </div>
        <div class="banner">
        
            <!-- The banner is styled using the CSS below -->
        </div>
    </div>
</section>
    
    
    	<div class="carousel-container">
        <div class="carousel">
            <div class="carousel-item">
                <img src="<%= request.getContextPath() %>/image/banner 1.1.jpg" style="width: 400px; height: 150px;" alt="ADCA">
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
            <p>Ashish Computer Institute running from 2019, conducting various commercial training and Skill Development programs. Generation Next Infotech is working across whole nation with Various Authorized Study Center (ASC) and a wide network in many states of the country. Our society decided to work for "Information & Technology for all", the slogan by the Indian Govt. For formulating the dream of Indian Govt. and to fulfill the requirement of employment of 22 Lac in I.T. Technologist and more than other 10 Lac ancillary requirement of computer operator / specialist in industrial development, small scale industries.</p>
            
        </div>
        <div class="card">
            <h2>Director Message</h2>
            <p>Ashish Computer Institute offers one of the most prestigious (Computer Applications) Program in the Country. Approved by Govt. of Bihar (SR Act 1860) and ISO 9001:2008. The Institute is committed to provide quality education, and to do so a perfect blend of senior, experienced educationist and young breed of energetic teachers comprise the faculty. We encourage the staff to adopt innovative and interactive methods of teaching in order to make the institute an example of posterity. The pursuit of knowledge and understanding has constantly propelled our journey towards excellence.</p>
            
        </div>
    </div>
    <section class="partners-section">
   
    <h2>Our Partners</h2>
    <div class="carousel">
        <img src="<%= request.getContextPath() %>/image/logo 1.jpg" alt="PMKY">
        <img src="<%= request.getContextPath() %>/image/logo 2.jpg" alt="Banner 1.1">
        <img src="<%= request.getContextPath() %>/image/logo 3.jpg" alt="Banner 1.1">
        <img src="<%= request.getContextPath() %>/image/logo 5.jpg" alt="Banner 1.1">
        <img src="<%= request.getContextPath() %>/image/logo 6.jpg" alt="Banner 1.1">
        <img src="<%= request.getContextPath() %>/image/logo 7.jpg" alt="Banner 1.1">
    </div>
</section>
    <footer>
        &copy; 2024 Ashish Computer Institute. All rights reserved.
    </footer>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our Vision & Mission</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        line-height: 1.8;
        background-color: #f4f4f9;
        color: #333;
    }

    .container {
        width: 60%;
        margin: 50px auto;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        color: #004080;
        font-size: 2.5em;
        margin-bottom: 20px;
    }

    h2 {
        color: #0066cc;
        font-size: 1.8em;
        margin-bottom: 10px;
        border-bottom: 2px solid #004080;
        padding-bottom: 5px;
    }

    p {
        margin: 15px 0;
        font-size: 1.2em;
        text-align: justify;
    }

    .highlight {
        font-weight: bold;
        color: #004080;
    }
    
    footer {
        text-align: center;
        margin-top: 30px;
        padding: 10px;
        background-color: #004080;
        color: white;
    }
</style>
</head>
<body>

<jsp:include page="/navfile.jsp" />

<div class="container">
    <h1>Our Vision & Mission</h1>
    
    <h2>Our Vision</h2>
    <p>
        <span class="highlight">Ashish Computer Institute</span> is strongly committed to providing economic independence in the IT sector. We are delivering quality computer and information technology education at an affordable fee through our hi-tech computer education centres. We aim to fulfill the dreams of the youth in India and contribute to the development of our country.
    </p>
    
    <h2>Our Mission</h2>
    <p>
        Our mission is to develop human resources to discover and disseminate computer knowledge and extend its application beyond the boundaries of the IT industry. 
        <span class="highlight">Ashish Computer Institute</span> is a non-profit voluntary organization established to provide a platform for quality education at an affordable fee in computer and information technology education.
    </p>
    <p>
        Inherent in this broad mission are extended education and public service designed to educate people and improve the human condition.
    </p>
</div>

<footer>
    &copy; 2024 Ashish Computer Institute. All rights reserved.
</footer>

</body>
</html>

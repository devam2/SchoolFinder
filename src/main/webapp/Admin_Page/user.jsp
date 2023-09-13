<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 4/6/2023
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WelCome User</title>
    <style>
        .slider-container {
            float: right;
            display: flex;
            align-items: center;
        }

        .slider {
            width: 600px;
            height: 400px;
            position: relative;
            left: 0; /* Initial position */
        }

        .slider img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0; /* Hide all images */
            transition: opacity 1s ease-in-out; /* Add transition effect */
        }

        .slider img.active {
            opacity: 1; /* Show active image */
        }

        .college-list {
            float: left;
            width: 200px;
            margin-left: 50px; /* Add space between slider and college list */
        }

        .college-list h2 {
            font-size: 24px;
            font-weight: bold;
        }

        .college-list ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .college-list li {
            margin: 10px 0;
            font-size: 18px;
        }
        nav {
            background-color:orange;
            overflow: hidden;
        }

        nav ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        nav li {
            float: left;
        }

        nav a {
            height: 100%;
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav a:hover {
            color: white;
        }
        nav li:last-child {
            float: right;
        }
        footer {

            background-color: #222;
            color: #fff;
            padding: 50px 0;
            margin-top: 520px;
        }

        .container {

            max-width: 1200px;
            margin: 0 auto;
        }

        .col {
            width: 33.33%;
            padding: 0 15px;
            box-sizing: border-box;
        }

        h4 {
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        li {
            margin-bottom: 10px;
        }

        .social-icons li {
            display: inline-block;
            margin-right: 10px;
        }

        .social-icons li:last-child {
            margin-right: 0;
        }

        .social-icons a {
            color: #fff;
            font-size: 1.2rem;
            display: inline-block;
            height: 40px;
            width: 40px;
            text-align: center;
            line-height: 40px;
            border-radius: 50%;
            background-color: #f00; /* Change this to the color of your choice */
        }



    </style>


</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="#">Blog</a></li>
            <li><a href="#">College Search</a></li>
            <li><a href="#">Scholarships Search</a></li>
            <li><a href="#">logout</a></li>

        </ul>
    </nav>

</header>
<main>
    <div class="slider-container">
        <div class="slider">
            <img src="science.jpg" alt="Image 1" class="mySlides">
            <img src="manage.png" alt="Image 2" class="mySlides">
            <img src="Science_Near_Me.png" alt="Image 3" class="mySlides">
        </div>
    </div>
    <div class="college-list">
        <h2>Available Colleges:</h2>
        <ul>
            <li>College 1</li>
            <li>College 2</li>
            <li>College 3</li>
        </ul>
    </div>


</main>

<footer>
    <div class="container">
        <div class="row">
            <div class="col">
                <h4>About Us</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut consequat lorem. Quisque quis ex ut nisl tincidunt molestie.</p>
            </div>
            <div class="col">
                <h4>Contact Us</h4>
                <ul>
                    <li><i class="fas fa-envelope"></i> Email: example@example.com</li>
                    <li><i class="fas fa-phone"></i> Phone: +1 (123) 456-7890</li>
                    <li><i class="fas fa-map-marker-alt"></i> Address: 123 Main St, Anytown, USA</li>
                </ul>
            </div>
            <div class="col">
                <h4>Follow Us</h4>
                <ul class="social-icons">
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>

<script>
    let slideIndex = 0;
    let slider = document.querySelector('.slider');
    let images = slider.querySelectorAll('img');
    let collegeList = document.querySelector('.college-list');

    // Set active image
    function setActiveImage() {
        // Hide all images
        for (let i = 0; i < images.length; i++) {
            images[i].classList.remove('active');
        }
        // Show active image
        images[slideIndex].classList.add('active');
    }

    // Show next image
    function showNextImage() {
        slideIndex++;
        if (slideIndex >= images.length) {
            slideIndex = 0;
        }
        setActiveImage();
    }

    // Set interval for auto image slider
    let interval = setInterval(showNextImage, 3000);

    // Stop auto image slider on mouseover
    slider.addEventListener('mouseover', function() {
        clearInterval(interval);
    });

    // Restart auto image slider on mouseout
    slider.addEventListener('mouseout', function() {
        interval = setInterval(showNextImage, 3000);
    });
</script>
</body>
</html>
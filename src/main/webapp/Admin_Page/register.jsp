

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Registration Page</title>
  <!-- Link to your CSS file -->
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
    }

    /* header styles */
    header {
      background-color: orange;
      color:white;
      padding: 20px;
    }

    /* navigation styles */
    nav {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    nav ul {
      list-style: none;
      display: flex;
      justify-content: center;
    }

    nav li {
      margin-right: 20px;
    }

    nav a {
      color: #fff;
      text-decoration: none;
      font-size: 1.2rem;
    }

    /* registration form styles */
    form {
      margin: 50px auto;
      width: 80%;
      max-width: 500px;
      background-color:lightgray;
      padding: 30px;
      border-radius: 5px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    form h2 {
      margin-bottom: 20px;
      text-align: center;
    }
    form h1{
      color:whitesmoke;
      text-align: center;

    }
    form h1 {
      text-align: center;
      font-size: 32px;
      margin-bottom: 30px;
      animation-name: slideIn;
      animation-duration: 1s;
    }

    @keyframes slideIn {
      0% {
        transform: translateY(-100%);
        opacity: 0;
      }
      100% {
        transform: translateY(0);
        opacity: 1;
      }
    }


    form label {
      display: block;
      margin-bottom: 10px;
    }

    form input[type="text"],
    form input[type="email"],
    form input[type="password"] {
      width: 100%;
      padding: 10px;
      border-radius: 3px;
      border: none;
      margin-bottom: 20px;
      box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
    }

    form button[type="submit"] {
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 3px;
      cursor: pointer;
    }

    form button[type="submit"]:hover {
      background-color: #555;
    }

    footer {

      color: black;
      padding: 50px 0;
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
    .partition.view-more-btn {
      display: inline-block;
      background-color: orange;
      color: white;
      padding: 8px 16px;
      border-radius: 4px;
      transition: transform 0.3s ease-in-out;
    }
  </style>
</head>
<body>
<header>
  <nav>
    <ul>
      <li><a href="#">Blog</a></li>
      <li><a href="#">College Search</a></li>
      <li><a href="#">About us</a></li>

    </ul>
  </nav>
    <!-- Navigation bar code -->
</header>

<main>


    <form action="../user?page=Register" method="post">
      <h3>Register Here</h3>
      <label for="name">UserName:</label>
      <input type="text" id="name" name="username" required>
      <label for="name">Full Name</label>
      <input type="text" id="fullName" name="fullName" required>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>
      <input type="submit" value="Register">
    </form>
  </main>


    <footer>
      <div class="container">
        <div class="row">
          <div class="col">

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
      <!-- Footer code -->
    </footer>

</body>

</html>

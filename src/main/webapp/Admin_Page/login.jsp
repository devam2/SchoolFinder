<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login Form</title>
  <style>
    /* Global styles */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    /* Login form styles */
    form {
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 20px;
      max-width: 400px;
      margin: 0 auto;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
    }
    h4{
      text-align: center;
      color: darkblue;
    }

    label {
      display: block;
      margin-bottom: 10px;
    }

    input[type="text"],
    input[type="password"],
    select {
      display: block;
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      margin-bottom: 20px;
      font-size: 16px;
    }

    input[type="submit"] {
      background-color:orange;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #3e8e41;
    }

    .admin {
      background-color: #2196F3;
      color: white;
    }

    .user {
      background-color: #f44336;
      color: white;
    }

    p {
      text-align: center;
      margin-top: 20px;
    }

    a {
      color: #4CAF50;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }


  </style>
</head>
<body>
<h4>Login</h4>
<form action="admin?action=login" method="post">
  <input type="hidden" name="page" value="LOGIN"></input>
  <label for="username">Username:</label>
  <input type="text" id="username" name="username"><br><br>
  <label for="password">Password:</label>
  <input type="password" id="password" name="password"><br><br>
  <label for="usertype">Select User Type:</label>
  <select id="usertype" name="usertype">
    <option value="admin">Admin</option>
    <option value="user">User</option>
  </select><br><br>
  <input type="submit" value="Login">
</form>
<%--<p>Don't have an account? <a href="../user?page=newUsers">Register here</a>.</p>--%>
<%--<p>Forgot your password? <a href="forgotpassword.html">Reset here</a>.</p>--%>
</body>
</html>

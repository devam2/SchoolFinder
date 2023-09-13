<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 9/12/2023
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
  <title>Change Password</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #0e81a5;
    }

    .container {
      width: 50%;
      margin: 0 auto;
      padding: 20px;
      background-color: #f2f2f2;
      border-radius: 10px;
      box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.3);
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .form-input {
      width: 100%;
      padding: 10px;
      border-radius: 5px;
      border: none;
      box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.3);
    }

    .form-button {
      display: block;
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      font-size: 16px;
      font-weight: bold;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .form-button:hover {
      background-color: #3e8e41;
    }

    .return-button {
      display: block;
      width: 100%;
      padding: 10px;
      background-color: #e74c3c;
      color: white;
      font-size: 16px;
      font-weight: bold;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 20px;
    }

    .return-button:hover {
      background-color: #c0392b;
    }
  </style>
</head>
<body>
<div class="container">
  <h1 style="text-align: center;">Change Password</h1>
  <form action="admin?action=changingpassword" method="post" style="text-align: center;">
    <div>
      <label for="oldpassword" class="form-label">Old Password:</label>
      <input type="password" id="oldpassword" name="oldpassword" class="form-input"><br><br>
      <label for="newpassword" class="form-label">New Password:</label>
      <input type="password" id="newpassword" name="newpassword" class="form-input"><br><br>
      <input type="submit" value="Change Password" class="form-button">
    </div>
  </form>
  <form action="admin?action=home" method="post">
    <button class="return-button">Return</button>
  </form>
</div>
</body>
</html>

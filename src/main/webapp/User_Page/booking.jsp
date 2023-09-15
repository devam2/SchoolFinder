<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 9/13/2023
  Time: 1:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Student Information Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
    }

    h1 {
      text-align: center;
      padding: 20px;
      background-color: #333;
      color: white;
    }

    form {
      max-width: 500px;
      margin: 0 auto;
      background-color: white;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      font-weight: bold;
      margin-top: 10px;
    }

    input[type="text"],
    input[type="email"],
    textarea,
    select {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    select {
      height: 35px;
    }

    input[type="submit"] {
      background-color: #333;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #555;
    }
  </style>
</head>
<body>
<h1>Student Information Form</h1>
<form action="user?page=savebooking" method="POST">

  <input type="hidden" name="id" value="${id}">
<%--  <input type="text" value="${id}">--%>
  <label for="name">Name:</label>
  <input type="text" id="name" name="name" required><br><br>

  <label for="schoolname">School Name:</label>
  <input type="text" id="schoolname" name="schoolname" required><br><br>

  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required><br><br>

  <label for="address">Address:</label>
  <textarea id="address" name="address" rows="4" required></textarea><br><br>

  <label for="educationlvl">Education Level:</label>
  <select id="educationlvl" name="educationlvl" required>
    <option value="High School">High School</option>
    <option value="College">College</option>
    <option value="University">University</option>
    <!-- Add more options as needed -->
  </select><br><br>

  <label for="passedoutyear">Year Passed Out:</label>
  <input type="text" id="passedoutyear" name="passedoutyear" required><br><br>

  <label for="marks">Marks:</label>
  <input type="text" id="marks" name="marks" required><br><br>

  <label for="newSchoolName">New School Name:</label>
  <input type="text" id="newSchoolName" name="newSchoolName" required><br><br>

  <label for="level">Level:</label>
  <input type="text" id="level" name="level" required><br><br>

  <label for="faculty">Faculty:</label>
  <input type="text" id="faculty" name="faculty" required><br><br>

  <input type="submit" value="Submit">
</form>
</body>
</html>


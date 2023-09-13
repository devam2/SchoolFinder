<%@ page import="Model.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 3/23/2023
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit College Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        h1 {
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"], input[type="date"], textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        textarea {
            height: 100px;
        }
        input[type="file"] {
            margin-top: 10px;
        }
        button[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Edit College Details</h1>
    <form action="admin?action=finaledit" method="POST" enctype="multipart/form-data">

        <input type="hidden" name="id" value="${student.id}">

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${student.schoolname}" required>

        <label for="location">Location:</label>
        <input type="text" id="location" name="location" value="${student.location}" required>

        <label for="fee">Fee:</label>
        <input type="text" id="fee" name="fee" value="${student.fee}" required>

        <label for="seat">Seat:</label>
        <input type="number" id="seat" name="seat" value="${student.seat}" required>

        <label for="scholarship">Scholarship:</label>
        <input type="text" id="scholarship" name="scholarship" value="${student.scholarship}" required>

        <label for="level">Level:</label>
        <input type="text" id="level" name="level" value="${student.level}" required>

        <label for="faculty">Faculty:</label>
        <input type="text" id="faculty" name="faculty" value="${student.faculty}" required>

        <label for="admissionDate">Admission Date:</label>
        <input type="date" id="admissionDate" name="admissionDate" value="${student.admissiondate}" required>

        <label for="admissionDeadline">Admission Deadline:</label>
        <input type="date" id="admissionDeadline" name="admissionDeadline" value="${student.admissiondeadline}" required>

        <label for="type">Type:</label>
        <input type="text" id="type" name="type" value="${student.type}" required>

<%--        <label for="image">Image:</label>--%>
<%--        <input type="file" id="image" name="image" accept="image/*" required>--%>

        <button type="submit">Update College Details</button>
    </form>
</div>
</body>
</html>

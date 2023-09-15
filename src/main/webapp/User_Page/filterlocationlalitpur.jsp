<%@ page import="Model.Student" %>
<%@ page import="Service.UserService" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 9/15/2023
  Time: 6:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UniFinder 360</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Add styles for the search input and button */
        .search-container {
            float: right;
            margin-right: 20px;
            margin-top: 8px;
        }

        .search-container input[type="text"] {
            padding: 6px;
            margin-top: 3px;
            border: none;
            font-size: 17px;
            background-color: #f2f2f2;
        }

        .search-container button {
            float: right;
            padding: 6px 10px;
            margin-top: 3px;
            margin-left: 5px;
            background-color: #333;
            color: white;
            border: none;
            cursor: pointer;
        }

        .table-container {
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .pagination a {
            color: black;
            padding: 8px 16px;
            text-decoration: none;
        }

        .pagination a.active {
            background-color: #333;
            color: white;
        }

        .pagination a:hover:not(.active) {
            background-color: #ddd;
        }
    </style>
</head>
<body>

<div class="navbar">
    <a href="user?page=index"><img src="logo.png" alt="Logo"></a>
    <a href="#">UniFinder 360</a>
    <a href="#">Location</a>
    <a href="#">Collection</a>
    <a href="#">Destination</a>

    <!-- Search input and button -->
    <div class="search-container">
        <input type="text" placeholder="Search..." id="searchInput">
        <button onclick="searchTable()">Search</button>
    </div>

    <a href="#">Dashboard</a>
    <a href="#">Login</a>
</div>

<div class="table-container">
    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>Location</th>
            <th>Fee</th>
            <th>Seat</th>
            <th>Level</th>
            <th>Admission date</th>
            <th>Admission deadline</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <!-- Table data goes here -->
        <%
            List<Student> bookList = new UserService().getloclalitpur();
            int sn =1;
            for (Student student : bookList) {
        %>
        <tr>
            <td><%=sn%> </td>
            <td><%= student.getSchoolname() %></td>
            <td><%= student.getLocation() %></td>
            <td><%= student.getFee() %></td>
            <td><%= student.getSeat() %></td>
            <td><%= student.getLevel() %></td>
            <td><%= student.getAdmissiondate() %></td>
            <td><%= student.getAdmissiondeadline() %></td>
            <td><a href="user?page=gotobook&id=<%=student.getId()%>">Register</a> </td>
        </tr>
        <%
                sn=sn+1;
            }
        %>
        </tbody>
    </table>

    <div class="pagination">
        <a href="#" class="active">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">5</a>
    </div>
</div>

<script>
    // JavaScript function to handle table search
    function searchTable() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.querySelector("table");
        tr = table.getElementsByTagName("tr");

        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0]; // Change the index as needed

            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>

</body>
</html>


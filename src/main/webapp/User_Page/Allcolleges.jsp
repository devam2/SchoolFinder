<%@ page import="Service.UserService" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <title>All College</title>
    <style>
        *{margin: 0;
            padding: 0;
            font-family: sans-serif;

        }
        .container{
            width: 100%;
            height: 100%;
            /* background-color: aquamarine; */
        }
        .navbar{
            height: 100px;
            width: 100%;
            background-color: aliceblue;


        }
        .logo{
            height: 80px;
            width: 220px;
            /* border: solid black 1px; */
            float:left;
            margin-left: 50px;
        }
        .logo h3{
            text-align: center;
            font-weight: 40px;
            /* margin-right: 10px; */
            float: right;
            padding-top: 40px;

        }
        .navbar ul li{
            float: left;
            padding-left:  60px ;
            text-decoration: none;
            display: inline;
            padding-top: 40px;
        }
        .fa-solid  {
            /* border: solid green 1px; */
            width: 20px;
            height: 20px;
        }
        .navbar ul li a{
            text-decoration: none;
            text-align: center;
            list-style: none;
        }
        .formbox{
            height: 30px;
            width: 80px;
            float: left;
            margin-left: 200px;
            margin-top: 40px;
            /* border: solid green 1px; */

        }
        .formbox a{
            text-decoration: none;

        }
        .formbox1{
            height: 30px;
            width: 80px;
            float: right;
            /* margin-left: 100px; */
            margin-top: 40px;
            /* border: solid green 1px; */
            margin-right: 100px;

        }
        .formbox1 a{
            text-decoration: none;

        }
        .box{
            height: 600px;
            width: 100%;
            /* background-color: brown; */
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            border: solid black 1px;
        }
        .first,.second,.third{
            /* flex-basis:calc(25% - 20%) ; */
            /* background-color: red; */
            /* padding: 20px; */
            margin-bottom: 20px;
            margin: 20px;
            width: 400px;
            border: solid black 1px;
            background: #FFF;
            box-shadow: 0px 4px 4px 5px rgba(0, 0, 0, 0.25);


        }
        /* .first,.second,.third h3{
            text-align: center;
        } */
        .first,.second,.third h3,p,h6{
            text-align: left;
            padding-top: 10px;
            /* padding-left: 10px; */
        }
        .texting{
            width: 100%;
            height: 30px;
            border: solid green 1px;
        }
        .fa-solid fa-location-arrow{
            float: left;
            padding-top: 10px;
        }.texting h5{
             float: right;

         }
        .second h5{
            float: right;
            padding-left: 10px;
        }
        .third h5{
            float: right;
            padding-left: 10px;
        }

        .small{
            height: 200px;
            width: 400px;
            border: solid black 1px;
            margin-top: 10px;
        }
        .text{margin:-50px 0 50px 0; border: solid red 1px;
        }
        .text h1{
            text-align: center;
        }
        .size,.size1,.size2{
            height: 60px;
            width: 100%;
            padding-right: 30px;
            /* border: solid black 1px; */
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .one{
            width: 100px;
            height: 40px;
            /* border: solid red 1px; */
            float: left;
            margin-top: 20px;

            border-radius: 12px;
        }
        .two{
            width: 100px;
            height: 40px;
            /* border: solid red 1px; */
            /*margin: 20px;*/
            margin-top: 20px;
            margin-right: 30PX;
            border-radius: 12px;
        }
        .one,.two h4{
            text-align: left;
        }
        .one,.two h5{
            text-align: left;
        }
        .f1{
            margin-top: 25px;
            border: solid red 1px;
            width: 100px;
            height: 30px;
            border-radius: 12px;
            margin-left: 250px;
        }
        .f1 h6{
            text-align: left;
            padding-top: 20px;
            padding-left: 20px;
            padding-top: 10px;
        }
        .f1  a{
            text-decoration: none;
        }
        .f1 h6:hover{
            color: blue;
        }
        .footer{
            height: 200px;
            width: 100%;
            background-color: red;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="navbar">
        <div class="logo">
            <img src="logo.svg" style="height: 80px; width: 70px;">
            <h3>UniFinder 360</h3>
        </div>
        <ul>
            <li><a href="">Home</a></li>
            <li><a href="">Home</a></li>
            <li><a href="">Home</a></li>
            <li><a href=""></a><i class="fa-solid fa-magnifying-glass"></i>Search</a></li>
        </ul>
        <div class="formbox">
            <a href="">Dashboard</a>

        </div>
        <div class="formbox1">
            <a href="">Login</a>
        </div>
    </div>
    <div class="box">
        <%
            UserService student = new UserService();
            List<Map<String, Object>> collegeList = student.getFeaturedColleges();
            for (Map<String, Object> collegeDetails : collegeList) {
                String image = (String) collegeDetails.get("Image");
                int id = (int) collegeDetails.get("id");
                String name = (String) collegeDetails.get("Name");
                String location = (String) collegeDetails.get("Location");
                String fee = (String) collegeDetails.get("Fee");
                int seat = (int) collegeDetails.get("Seat");
                String scholarship = (String) collegeDetails.get("Scholarship");
                String level = (String) collegeDetails.get("Level");
                String faculty = (String) collegeDetails.get("Faculty");
                String admissionDate = (String) collegeDetails.get("Admission_Date");
                String type = (String) collegeDetails.get("Type");
                String admissionDeadline = (String) collegeDetails.get("Admission_Deadline");
        %>
        <div class="first" style="height: auto;">
            <div class="small">
                <img src="./images/VirnchiCollege.jpeg"  style="height: 200px; width: 400px;" >
<%--                <img src="data:image/jpeg;base64," >--%>
            </div>
            <div class="text"><h1><%=fee%></h1></div>
            <h3><%= name%></h3>
            <br>
            <div class="texting" style="display:flex;justify-content:flex-start;">
            <i class="fa-solid fa-location-arrow" style="margin-right:10px"></i>
                <h5 style=""><%= location%></h5>
            </div>

            <p></p>
            <div class="size">
                <div class="one"><h4>Faculty:<%=faculty%></h4></div>
                <div class="two"><h4>Level:<%=level%></h4></div>
            </div>
            <div class="size1">
                <div class="one"><h4>Type<%=type%></h4></div>
                <div class="two"><h4>Seat<%=seat%></h4></div>
            </div>
            <div class="size2">
                <div class="one"><h4>Admission-Date:</h4><h5><%=admissionDate%></h5></div>
                <div class="two"><h4>Admission-Deadline:</h4><h5><%=admissionDeadline%></h5></div>
            </div>
            <div class="f1">
                <a href=""><h6>Register Now +</h6></a>
            </div>



        </div>
<%--        <div class="second">--%>
<%--            <div class="small"></div>--%>
<%--            <div class="text"><h1>Apple</h1></div>--%>
<%--            <h3>Virinchi College</h3>--%>
<%--            <br>--%>
<%--            <i class="fa-solid fa-location-arrow"><h5>Location Kathmandu</h5></i>--%>
<%--            <p></p>--%>
<%--            <div class="size">--%>
<%--                <div class="one"><h4>Faculty</h4></div>--%>
<%--                <div class="two"><h4>Level</h4></div>--%>
<%--            </div>--%>
<%--            <div class="size1">--%>
<%--                <div class="one"><h4>Type</h4></div>--%>
<%--                <div class="two"><h4>Seat</h4></div>--%>
<%--            </div>--%>
<%--            <div class="size2">--%>
<%--                <div class="one"><h4>Admission-Date</h4></div>--%>
<%--                <div class="two"><h4>Admission-Deadline</h4></div>--%>
<%--            </div>--%>
<%--            <div class="f1">--%>
<%--                <a href=""><h6>Register Now +</h6></a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="third">--%>
<%--            <div class="small">--%>
<%--                <img src="logo.svg" style="height: 200px;width: 300px;">--%>
<%--            </div>--%>
<%--            <div class="text"><h1>Apple</h1></div>--%>
<%--            <h3>Virinchi College</h3>--%>
<%--            <br>--%>
<%--            <span><i class="fa-solid fa-location-arrow"><h5>Location Kathmandu</h5></i></span>--%>
<%--            <p></p>--%>
<%--            <div class="size">--%>
<%--                <div class="one"><h4>Faculty</h4></div>--%>
<%--                <div class="two"><h4>Level</h4></div>--%>
<%--            </div>--%>
<%--            <div class="size1">--%>
<%--                <div class="one"><h4>Type</h4></div>--%>
<%--                <div class="two"><h4>Seat</h4></div>--%>
<%--            </div>--%>
<%--            <div class="size2">--%>
<%--                <div class="one"><h4>Admission-Date</h4></div>--%>
<%--                <div class="two"><h4>Admission-Deadline</h4></div>--%>
<%--            </div>--%>
<%--            <div class="f1">--%>
<%--                <a href=""><h6>Register Now +</h6></a>--%>
<%--            </div>--%>
        <% } %>
        </div>
    </div>


<%--</div>--%>
<!-- //footer -->
<!-- <div class="footer"></div> -->
</body>
</html>
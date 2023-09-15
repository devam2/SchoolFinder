<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <title>Document</title>
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
            width: 300px;
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
        .fa-solid fa-location-arrow{
            float: left;
            padding-top: 10px;
        }.first h5{
             float: right;
             padding-left: 10px;
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
            width: 300px;
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
            margin: 20px;
            border-radius: 12px;
        }
        .one,.two h4{
            text-align: left;
        }
        .f1 h6{
            text-align: left;
            padding-top: 10px;
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
            <li><a href="#">Location</a></li>
            <li><a href="#">Collection</a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a><i class="fa-solid fa-magnifying-glass"></i>Search</a></li>
        </ul>
        <div class="formbox">
            <a href="">Dashboard</a>

        </div>
        <div class="formbox1">
            <a href="">Login</a>
        </div>
    </div>
    <div class="box">
        <div class="first">
            <div class="small">
                <img src="real-estate-html-template.jpg" style="height: 200px; width: 300px;">
            </div>
            <div class="text"><h1>Apple</h1></div>
            <h3>Virinchi College</h3>
            <br>
            <i class="fa-solid fa-location-arrow"><h5>Location Kathmandu</h5></i>

            <p></p>
            <div class="size">
                <div class="one"><h4>Faculty</h4></div>
                <div class="two"><h4>Level</h4></div>
            </div>
            <div class="size1">
                <div class="one"><h4>Type</h4></div>
                <div class="two"><h4>Seat</h4></div>
            </div>
            <div class="size2">
                <div class="one"><h4>Admission-Date</h4></div>
                <div class="two"><h4>Admission-Deadline</h4></div>
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
        </div>
    </div>
<%--</div>--%>
<!-- //footer -->
<%--<div class="footer"></div>--%>
</body>
</html>
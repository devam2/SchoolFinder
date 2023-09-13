<%@ page import="java.io.PrintWriter" %>
<%@ page import="Service.UserService" %>
<%@ page import="Model.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="Service.AdminService" %>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <!----======== CSS ======== -->
  <style>
    /* ===== Google Font Import - Poppins ===== */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap');

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }

    :root {
      /* ===== Colors ===== */
      --primary-color: #0E4BF1;
      --panel-color: #FFF;
      --text-color: #000;
      --black-light-color: #707070;
      --border-color: #e6e5e5;
      --toggle-color: #DDD;
      --box1-color: #4DA3FF;
      --box2-color: #FFE6AC;
      --box3-color: #E7D1FC;
      --title-icon-color: #fff;

      /* ====== Transition ====== */
      --tran-05: all 0.5s ease;
      --tran-03: all 0.3s ease;
      --tran-03: all 0.2s ease;
    }

    body {
      min-height: 100vh;
      background-color: var(--primary-color);
    }

    body.dark {
      --primary-color: #3A3B3C;
      --panel-color: #242526;
      --text-color: #CCC;
      --black-light-color: #CCC;
      --border-color: #4D4C4C;
      --toggle-color: #FFF;
      --box1-color: #3A3B3C;
      --box2-color: #3A3B3C;
      --box3-color: #3A3B3C;
      --title-icon-color: #CCC;
    }

    /* === Custom Scroll Bar CSS === */
    ::-webkit-scrollbar {
      width: 8px;
    }

    ::-webkit-scrollbar-track {
      background: #f1f1f1;
    }

    ::-webkit-scrollbar-thumb {
      background: var(--primary-color);
      border-radius: 12px;
      transition: all 0.3s ease;
    }

    ::-webkit-scrollbar-thumb:hover {
      background: #0b3cc1;
    }

    body.dark::-webkit-scrollbar-thumb:hover,
    body.dark .activity-data::-webkit-scrollbar-thumb:hover {
      background: #3A3B3C;
    }

    nav {
      position: fixed;
      top: 0;
      left: 0;
      height: 100%;
      width: 250px;
      padding: 10px 14px;
      background-color: var(--panel-color);
      border-right: 1px solid var(--border-color);
      transition: var(--tran-05);
    }

    nav.close {
      width: 73px;
    }

    nav .logo-name {
      display: flex;
      align-items: center;
    }

    nav .logo-image {
      display: flex;
      justify-content: center;
      min-width: 45px;
    }

    nav .logo-image img {
      width: 40px;
      object-fit: cover;
      border-radius: 50%;
    }

    nav .logo-name .logo_name {
      font-size: 22px;
      font-weight: 600;
      color: var(--text-color);
      margin-left: 14px;
      transition: var(--tran-05);
    }

    nav.close .logo_name {
      opacity: 0;
      pointer-events: none;
    }

    nav .menu-items {
      margin-top: 40px;
      height: calc(100% - 90px);
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .menu-items li {
      list-style: none;
    }

    .menu-items li a {
      display: flex;
      align-items: center;
      height: 50px;
      text-decoration: none;
      position: relative;
    }

    .nav-links li a:hover:before {
      content: "";
      position: absolute;
      left: -7px;
      height: 5px;
      width: 5px;
      border-radius: 50%;
      background-color: var(--primary-color);
    }

    body.dark li a:hover:before {
      background-color: var(--text-color);
    }

    .menu-items li a i {
      font-size: 24px;
      min-width: 45px;
      height: 100%;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--black-light-color);
    }

    .menu-items li a .link-name {
      font-size: 18px;
      font-weight: 400;
      color: var(--black-light-color);
      transition: var(--tran-05);
    }

    nav.close li a .link-name {
      opacity: 0;
      pointer-events: none;
    }

    .nav-links li a:hover i,
    .nav-links li a:hover .link-name {
      color: var(--primary-color);
    }

    body.dark .nav-links li a:hover i,
    body.dark .nav-links li a:hover .link-name {
      color: var(--text-color);
    }

    .menu-items .logout-mode {
      padding-top: 10px;
      border-top: 1px solid var(--border-color);
    }

    .menu-items .mode {
      display: flex;
      align-items: center;
      white-space: nowrap;
    }

    .menu-items .mode-toggle {
      position: absolute;
      right: 14px;
      height: 50px;
      min-width: 45px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
    }

    .mode-toggle .switch {
      position: relative;
      display: inline-block;
      height: 22px;
      width: 40px;
      border-radius: 25px;
      background-color: var(--toggle-color);
    }

    .switch:before {
      content: "";
      position: absolute;
      left: 5px;
      top: 50%;
      transform: translateY(-50%);
      height: 15px;
      width: 15px;
      background-color: var(--panel-color);
      border-radius: 50%;
      transition: var(--tran-03);
    }

    body.dark .switch:before {
      left: 20px;
    }

    .dashboard {
      position: relative;
      left: 250px;
      background-color: var(--panel-color);
      min-height: 100vh;
      width: calc(100% - 250px);
      padding: 10px 14px;
      transition: var(--tran-05);
    }

    nav.close ~ .dashboard {
      left: 73px;
      width: calc(100% - 73px);
    }

    .dashboard .top {
      position: fixed;
      top: 0;
      left: 250px;
      display: flex;
      width: calc(100% - 250px);
      justify-content: space-between;
      align-items: center;
      padding: 10px 14px;
      background-color: var(--panel-color);
      transition: var(--tran-05);
      z-index: 10;
    }

    nav.close ~ .dashboard .top {
      left: 73px;
      width: calc(100% - 73px);
    }

    .dashboard .top .sidebar-toggle {
      font-size: 26px;
      color: var(--text-color);
      cursor: pointer;
    }

    .dashboard .top .search-box {
      position: relative;
      height: 45px;
      max-width: 600px;
      width: 100%;
      margin: 0 30px;
    }

    .top .search-box input {
      position: absolute;
      border: 1px solid var(--border-color);
      background-color: var(--panel-color);
      padding: 0 25px 0 50px;
      border-radius: 5px;
      height: 100%;
      width: 100%;
      color: var(--text-color);
      font-size: 15px;
      font-weight: 400;
      outline: none;
    }

    .top .search-box i {
      position: absolute;
      left: 15px;
      font-size: 22px;
      z-index: 10;
      top: 50%;
      transform: translateY(-50%);
      color: var(--black-light-color);
    }

    .top img {
      width: 40px;
      border-radius: 50%;
    }

    .dashboard .dash-content {
      padding-top: 50px;
    }

    .dash-content .title {
      display: flex;
      align-items: center;
      margin: 60px 0 30px 0;
    }

    .dash-content .title i {
      position: relative;
      height: 35px;
      width: 35px;
      background-color: var(--primary-color);
      border-radius: 6px;
      color: var(--title-icon-color);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 24px;
    }

    .dash-content .title .text {
      font-size: 24px;
      font-weight: 500;
      color: var(--text-color);
      margin-left: 10px;
    }

    .dash-content .boxes {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
    }

    .dash-content .boxes .box {
      display: flex;
      flex-direction: column;
      align-items: center;
      border-radius: 12px;
      width: calc(100% / 3 - 15px);
      padding: 15px 20px;
      background-color: var(--box1-color);
      transition: var(--tran-05);
    }

    .boxes .box i {
      font-size: 35px;
      color: var(--text-color);
    }

    .boxes .box .text {
      white-space: nowrap;
      font-size: 18px;
      font-weight: 500;
      color: var(--text-color);
    }

    .boxes .box .number {
      font-size: 40px;
      font-weight: 500;
      color: var(--text-color);
    }

    .boxes .box.box2 {
      background-color: var(--box2-color);
    }

    .boxes .box.box3 {
      background-color: var(--box3-color);
    }

    .dash-content .activity .activity-data {
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 100%;
    }

    .activity .activity-data {
      display: flex;
    }

    .activity-data .data {
      display: flex;
      flex-direction: column;
      margin: 0 15px;
    }

    .activity-data .data-title {
      font-size: 20px;
      font-weight: 500;
      color: var(--text-color);
    }

    .activity-data .data .data-list {
      font-size: 18px;
      font-weight: 400;
      margin-top: 20px;
      white-space: nowrap;
      color: var(--text-color);
    }

    @media (max-width: 1000px) {
      nav {
        width: 73px;
      }

      nav.close {
        width: 250px;
      }

      nav .logo_name {
        opacity: 0;
        pointer-events: none;
      }

      nav.close .logo_name {
        opacity: 1;
        pointer-events: auto;
      }

      nav li a .link-name {
        opacity: 0;
        pointer-events: none;
      }

      nav.close li a .link-name {
        opacity: 1;
        pointer-events: auto;
      }

      nav ~ .dashboard {
        left: 73px;
        width: calc(100% - 73px);
      }

      nav.close ~ .dashboard {
        left: 250px;
        width: calc(100% - 250px);
      }

      nav ~ .dashboard .top {
        left: 73px;
        width: calc(100% - 73px);
      }

      nav.close ~ .dashboard .top {
        left: 250px;
        width: calc(100% - 250px);
      }

      .activity .activity-data {
        overflow-X: scroll;
      }
    }

    @media (max-width: 780px) {
      .dash-content .boxes .box {
        width: calc(100% / 2 - 15px);
        margin-top: 15px;
      }
    }

    @media (max-width: 560px) {
      .dash-content .boxes .box {
        width: 100%;
      }
    }

    @media (max-width: 500px) {
      .dashboard .top .sidebar-toggle {
        display: none;
      }
    }

    .images {
      max-width: 30px;
      height: 30px;
    }


    table {
      border-collapse: collapse;
      width: 100%;
    }

    th,
    td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #f2f2f2;
    }

    .delete-icon,
    .update-icon {
      cursor: pointer;
      margin-right: 10px;
    }

    .delete-icon:hover i,
    .update-icon:hover i {
      color: red;
    }

    .delete-icon i,
    .update-icon i {
      font-size: 18px;
    }

  </style>

  <!----===== Iconscout CSS ===== -->
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

  <title>User Dashboard Panel</title>
</head>
<body>
<form action="" method="post">
  <nav>
    <div class="logo-name">
      <%--            <div class="images">--%>
      <%--                <img src="assets/images/logo2.png" alt="logo">--%>
      <%--            </div>--%>

      <span class="logo_name"></span>
    </div>

    <div class="menu-items">
      <ul class="nav-links">
        <li><a href="admin?action=home">
          <i class="uil uil-estate"></i>
          <span class="link-name">Dashboard</span>
        </a></li>
        <li><a href="admin?action=gotoregister">
          <i class="uil uil-files-landscapes"></i>
          <span class="link-name">Register School/College</span>
        </a></li>
        <li><a href="admin?action=manageschool">
          <i class="uil uil-chart"></i>
          <span class="link-name">Manage School/College</span>
        </a></li>    <li><a href="admin?action=listuser">
        <i class="uil uil-chart"></i>
        <span class="link-name">Manage Users</span>
      </a></li>
        <li><a href="admin?action=changepassword">
          <i class="uil uil-chart"></i>
          <span class="link-name">Change Password</span>
        </a></li>

      </ul>

      <ul class="logout-mode">
        <li><a href="admin?action=logout">
          <i class="uil uil-signout"></i>
          <span class="link-name">Logout</span>
        </a></li>

        <li class="mode">
          <a href="#">
            <i class="uil uil-moon"></i>
            <span class="link-name">Dark Mode</span>
          </a>

          <div class="mode-toggle">
            <span class="switch"></span>
          </div>
        </li>
      </ul>
    </div>
  </nav>

  <section class="dashboard">
    <div class="top">
      <i class="uil uil-bars sidebar-toggle"></i>

      <div class="search-box">
        <i class="uil uil-search"></i>
        <input type="text" placeholder="Search here...">
      </div>

      <img src="image/" alt="">
    </div>

    <div class="dash-content">
      <div class="overview">

        <table>
          <thead>
          <tr>
            <th>id</th>
            <th>Institute Name</th>
            <th>Admission Date</th>
            <th>Fees</th>
            <th>Seat</th>
            <th>Levels</th>
            <th>Location</th>
            <th>faculty</th>
            <th>Type</th>
            <th>Actions</th>
          </tr>
          </thead>
          <tbody>
          <% PrintWriter printt =response.getWriter();

            List<Student> booklist = new AdminService().showbooking();
            int sn =1;
            for (Student student : booklist) {
          %>
          <tr>
            <td>  <%=sn%>.</td>
            <td>  <%=student.getSchoolname()%></td>
            <td>  <%=student.getAdmissiondate()%></td>
            <td>  <%=student.getFee()%></td>
            <td>  <%=student.getSeat()%></td>
            <td>  <%=student.getLevel()%></td>
            <td>  <%=student.getLocation()%></td>
            <td>  <%=student.getFaculty()%></td>
            <td>  <%=student.getType()%></td>
            <td>
              <a href="admin?action=delete&id=<%=student.getId()%>"><span class="material-symbols-outlined">delete</span></a>
              <a href="admin?action=editdetails&id=<%=student.getId()%>"> <span class="material-symbols-outlined">upgrade</span></a>
            </td>

          </tr>

          <% sn=sn+1; } %>
          </tbody>
        </table>
      </div>
    </div>
    </div>
  </section>


</form>

</body>
</html>

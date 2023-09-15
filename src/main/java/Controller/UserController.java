package Controller;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import DBConnection.DBConnection;
import Hashing.HashPassword;
import Model.Student;
import Service.AdminService;
import Service.UserService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", urlPatterns = "/user")
public class UserController extends HttpServlet {
    private String message;

//    public void init() {
//        message = "Hello World!";
//    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();


        String action = request.getParameter("page");

        //------------------------------------------------------------------------------------------------------------------------------

        //To redirect in dashboard
        if (action.equalsIgnoreCase("dashboard"))

        {
            System.out.println("somethis happen here");
            RequestDispatcher rd = request.getRequestDispatcher("User_Page/dashboard.jsp");
            rd.forward(request, response);
        }
//---------------------------------------------------------------------------------------------------------------===






//        --------------------------------------------------------------------------------------------------

        // send to index page
        if (action.equalsIgnoreCase("index"))

        {
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
//------------------------------------------------------------------------------------------------------------------------------

        //To redirect in Register Page
        if (action.equalsIgnoreCase("gotologin"))

        {
            RequestDispatcher rd = request.getRequestDispatcher("User_Page/Login.jsp");
            rd.forward(request, response);
        }
//---------------------------------------------------------------------------------------------------------------===
        if (action.equalsIgnoreCase("login") ){

            String email = request.getParameter("Email");
            String password = HashPassword.hashPassword(request.getParameter("Password"));
            System.out.println(email + " " + password + " ");

            Student student = new UserService().getUser(email, password);
//            System.out.println(user.getUsername()+" "+user.getPassword());
            if (student != null) {
                HttpSession session = request.getSession();
                session.setAttribute("uid", student.getId());

                session.setAttribute("user", email);
                session.setAttribute("name", student.getUserName());
                //                    System.out.println(session.getAttribute("user"));
                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//                User_Page/dashboard.jsp
                rd.forward(request, response);
            } else {
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("User_Page/Login.jsp");
                rd.forward(request, response);
            }

        }
//------------------------------------------------------------------------------------------------------------------------------


//        To register a new account
        if (action.equalsIgnoreCase("gotoregister")) {
            RequestDispatcher rd = request.getRequestDispatcher("User_Page/Register.jsp");
            rd.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------


        if (action.equalsIgnoreCase("Register"))

        {
            Student student = new Student();

            student.setUserName(request.getParameter("username"));
            student.setEmail(request.getParameter("email"));
            student.setPassword(HashPassword.hashPassword(request.getParameter("password")));

            new UserService().insertUser(student);

            System.out.printf("Data Inserted");

            RequestDispatcher rd = request.getRequestDispatcher("User_Page/Login.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        }
//------------------------------------------------------------------------------------------------------------------------------


//        Show the user list in list user page
        if (action.equalsIgnoreCase("listuser") ){

            Student student = new Student();
            List<Student> studentList = new UserService().getUserList();

            request.setAttribute("student", student);
            request.setAttribute("studentlist", studentList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/listuser.jsp");
            rd.forward(request, response);


        }

//------------------------------------------------------------------------------------------------------------------------------


//        For user_details
        if (action.equalsIgnoreCase("userDetails"))
        {
            int id = Integer.parseInt(request.getParameter("id"));
            Student student = new UserService().getUserRow(id);
            request.setAttribute("id", id);
            request.setAttribute("student", student);  //Why this
            RequestDispatcher rd = request.getRequestDispatcher("Pages/user_details.jsp");
            rd.forward(request, response);
        }
//------------------------------------------------------------------------------------------------------------------------------

        // for deleting users in user_details page
        if (action.equalsIgnoreCase("deleteUser"))

        {
            int id = Integer.parseInt(request.getParameter("id"));
            UserService userService = new UserService();
            userService.deleteUser(id);
            List<Student> userList = new UserService().getUserList();
            request.setAttribute("userList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/listuser.jsp");
            rd.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------

        // for editing users
        if (action.equalsIgnoreCase("userEdit"))

        {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
            Student student = new UserService().getUserRow(id);
            request.setAttribute("id", id);
            request.setAttribute("student", student);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/update_college.jsp");
            rd.forward(request, response);
        }


//------------------------------------------------------------------------------------------------------------------------------



//        if (action.equalsIgnoreCase("editUser"))
//
//        {
//            Student student = new Student();
//            int id = Integer.parseInt(request.getParameter("id"));
//            student.setFullName(request.getParameter("fullName"));
//            student.setUserName(request.getParameter("userName"));
//            student.setPassword(request.getParameter("password"));
//
//            try {
//                new UserService().editUser(id, student);
//            } catch ( SQLException e) {
//                e.printStackTrace();
//            }
//            List<Student> userList = new UserService().getUserList();
//            request.setAttribute("userList", userList);
//            RequestDispatcher rd = request.getRequestDispatcher("Pages/list_user.jsp");
//            rd.forward(request, response);
//        }

//   ------------------------------------------------------------------------------------------------------------------------------------


//        To goto manage registration
        if (action.equalsIgnoreCase("manageregister")) {
            RequestDispatcher rd = request.getRequestDispatcher("User_Page/manageRegister.jsp");
            rd.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------

//   ------------------------------------------------------------------------------------------------------------------------------------


//        To goto dashboardpage
        if (action.equalsIgnoreCase("gotodashboard")) {
            RequestDispatcher rd = request.getRequestDispatcher("User_Page/dashboard.jsp");
            rd.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------
//   ------------------------------------------------------------------------------------------------------------------------------------


// for deleting the package
        if (action.equalsIgnoreCase("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            UserService userService = new UserService();
            userService.deleteUser(id);

            RequestDispatcher rd = request.getRequestDispatcher("user/manageRegister.jsp");
            rd.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------
//   ------------------------------------------------------------------------------------------------------------------------------------


        // this code is for editing the details of the package
        if (action.equalsIgnoreCase("editdetails")) {

            int id = Integer.parseInt(request.getParameter("id"));


            Student student = new UserService().getBookingDetails1(id);

            request.setAttribute("student", student);


            RequestDispatcher rd = request.getRequestDispatcher("user/editpackage.jsp");
            rd.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------

//   ------------------------------------------------------------------------------------------------------------------------------------

        // to go to edit policy
        if (action.equalsIgnoreCase("finaledit")) {
            Student student = new Student();
            int id = Integer.parseInt(request.getParameter("id"));

            student.setUserName(request.getParameter("Name"));
            student.setSchoolname(request.getParameter("Schoolname"));
            student.setEmail(request.getParameter("email"));
            student.setAddress(request.getParameter("Address"));
            student.setEducationlvl(request.getParameter("Educationlvl"));
            student.setPassedouyear(request.getParameter("passedoutyear"));
            student.setMarks(request.getParameter("marks"));
            student.setNewschoolName(request.getParameter("newSchoolName"));

            try {
                new UserService().editUser(id, student);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }


            RequestDispatcher rd = request.getRequestDispatcher("user/managepackage.jsp");
            rd.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------
//   ------------------------------------------------------------------------------------------------------------------------------------

        // redirect to register the college
        if (action.equalsIgnoreCase("gotobook")) {
            int id = Integer.parseInt(request.getParameter("id"));
            List<Student> userList = new UserService().goToBook(id);
            request.setAttribute("userList", userList);
            request.setAttribute("id", id);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("User_Page/booking.jsp");
            requestDispatcher.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------
//   ------------------------------------------------------------------------------------------------------------------------------------

        // so this controller save the  details and calculate the price of total tickets
        if (action.equalsIgnoreCase("savebooking")) {


            int id = Integer.parseInt(request.getParameter("id"));
            Student student = new Student();

            student.setUserName(request.getParameter("name"));
            student.setSchoolname(request.getParameter("schoolname"));
            student.setEmail(request.getParameter("email"));
            student.setAddress(request.getParameter("address"));
            student.setEducationlvl(request.getParameter("educationlvl"));
            student.setPassedouyear(request.getParameter("passedoutyear"));
            student.setMarks(request.getParameter("marks"));
            student.setNewschoolName(request.getParameter("newSchoolName"));
            student.setLevel(request.getParameter("level"));
            student.setFaculty(request.getParameter("faculty"));

            // from here seat will be calculated
            int newseat = 0;


            try {
                DBConnection db = new DBConnection();
                PreparedStatement pstn = db.getStatement("SELECT * FROM college WHERE id = ?");
                pstn.setInt(1, id);
                ResultSet rs = pstn.executeQuery();

                if (rs.next()) {
                    int oldseat = rs.getInt("Seat");
                    int no_of_student = 1;
                    System.out.println(no_of_student);
                    newseat = oldseat - no_of_student;
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }


            System.out.println(newseat);
            System.out.println(id);

//            this is used to insert data in database
            new UserService().insertBookingDetails(student);

            try {
                new UserService().newSeat(id, newseat);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

//            this will be used to show the data in the showprice page
//            List<Student> s = new UserService().getBookingDetails(id1);
//            request.setAttribute("s", s);
//            request.setAttribute("id1", id1);




            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------

//   ------------------------------------------------------------------------------------------------------------------------------------

        // this is for sorting the college by location of kathmandu

        if (action.equalsIgnoreCase("sorting")) {
//            String location = request.getParameter("query");
//            List<Student> searchResults = UserService.sortcollege(location);
//            request.setAttribute("ubasearchResults", searchResults);
//            request.setAttribute("author", author);
            RequestDispatcher dispatcher = request.getRequestDispatcher("User_Page/filterlocationKtm.jsp");
            dispatcher.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------


//   ------------------------------------------------------------------------------------------------------------------------------------

        // this is for going to allcolleges page

        if (action.equalsIgnoreCase("allcolleges")) {
//            String location = request.getParameter("query");
//            List<Student> searchResults = UserService.sortcollege(location);
//            request.setAttribute("ubasearchResults", searchResults);
//            request.setAttribute("author", author);
            RequestDispatcher dispatcher = request.getRequestDispatcher("User_Page/Allcolleges.jsp");
            dispatcher.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------


















//------------------------------------------------------------------------------------------------------------------------------

        if(action.equalsIgnoreCase("logout")){
            HttpSession session = request.getSession(false);
            session.invalidate();

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        }




//------------------------------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------------------------------

          if (action.equalsIgnoreCase("changepassword")) {

        RequestDispatcher rd = request.getRequestDispatcher("User_Page/changepassword.jsp");
        rd.forward(request, response);

    }




//------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------

        // for changing password
        if (action.equalsIgnoreCase("changingpassword")) {
            Student student = new Student();
            HttpSession session = request.getSession();
            String email = (String) session.getAttribute("email");
            student.setPassword((request.getParameter("oldpassword")));
            student.setNewpassword((request.getParameter("newpassword")));
            new UserService().changePassword(student, email);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);

        }



//------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------------------------





//------------------------------------------------------------------------------------------------------------------------------

    }


    public void destroy() {
    }
}
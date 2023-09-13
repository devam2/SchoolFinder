package Controller;

import DBConnection.DBConnection;
import Model.Student;
import Service.AdminService;
import Service.UserService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

@MultipartConfig
@WebServlet(name = "AdminController", value = "/admin")
public class AdminController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("login")){

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            Student student = new AdminService().getUser(username, password);

            if (student != null) {
                HttpSession session = request.getSession();
                session.setAttribute("uid", student.getId());

                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));

                RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/dashboard.jsp");
                rd.forward(request, response);
            }else {
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
        }

        // send to admin page
        if (action.equalsIgnoreCase("adminlogin"))

        {
            RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/login.jsp");
            rd.forward(request, response);
        }

        if (action.equalsIgnoreCase("gotoregister"))

        {
            RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/RegisterSchool.jsp");
            rd.forward(request, response);
        }


        // to register the college in database
        if (action.equalsIgnoreCase("register")){
            Student student = new Student();

            Part filePart = request.getPart("image");
            String fileName = filePart.getSubmittedFileName();
            String filePathName = "C:\\Users\\hp\\IdeaProjects\\demo1\\src\\main\\webapp\\files" + fileName;
            for (Part part : request.getParts()) {
                part.write(filePathName);

//
            }
            System.out.println(filePathName);

            try {
                student.setSchoolname(request.getParameter("name"));
                student.setAdmissiondate(request.getParameter("admissiondate"));
                student.setFee(request.getParameter("fees"));
//            student.setSeat(Integer request.getParameter("seat"));
                student.setSeat(Integer.parseInt(request.getParameter("seat")));

                student.setLevel(request.getParameter("level"));
                student.setLocation(request.getParameter("location"));
                student.setFaculty(request.getParameter("faculty"));
                student.setType(request.getParameter("type"));
                student.setAdmissiondeadline(request.getParameter("deadline"));
                student.setScholarship(request.getParameter("scholarship"));
                student.setImage(filePathName);

                new AdminService().register(student);
            }
            catch (Exception e){
                out.print("ERROR: " + e);
            }

            RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/dashboard.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        }

        //            This shows details of schools
        if (action.equalsIgnoreCase("moreschool")) {

            Student student = new Student();

            HashMap<String, Object> details = null;
            try {
                details = new AdminService().showschool(student);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            request.setAttribute("details", details);

            RequestDispatcher rd = request.getRequestDispatcher("admin/seeclaim.jsp");
            rd.forward(request, response);


        }

        // this is for updating the detail of school
//        if (action.equalsIgnoreCase("userEdit")) {
//            int id = Integer.parseInt(request.getParameter("id"));
//            System.out.println(id);
//            Student student = new AdminService().getSchoolRow(id);
//            request.setAttribute("id", id);
//            request.setAttribute("student", student);
//            RequestDispatcher rd = request.getRequestDispatcher("user/update_details.jsp");
//            rd.forward(request, response);
//        }


        // this is invoked when user press the edit button






//            policyDetails (for getting all the details of policy plan by id )
//        if (action.equalsIgnoreCase("policyDetails")) {
//            int id = Integer.parseInt(request.getParameter("id"));
//            Student student = new UserService().getUserRow(id);
//            request.setAttribute("id", id);
//            request.setAttribute("student", student);  //Why this
//
//            RequestDispatcher rd = request.getRequestDispatcher("user/user_details.jsp");
//            rd.forward(request, response);
//        }

//            For userEdit where user can edit the information of the policy
//        if (action.equalsIgnoreCase("userEdit")) {
//            int id = Integer.parseInt(request.getParameter("id"));
//            System.out.println(id);
//            Student student = new UserService().getUserRow(id);
//            request.setAttribute("id", id);
//            request.setAttribute("student", student);
//            RequestDispatcher rd = request.getRequestDispatcher("user/update_details.jsp");
//            rd.forward(request, response);
//        }

//   ------------------------------------------------------------------------------------------------------------------------------------


// for deleting the school
        if (action.equalsIgnoreCase("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            AdminService userService = new AdminService();
            userService.deleteSchool(id);

            RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/manageSchool.jsp");
            rd.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------
//

//------------------------------------------------------------------------------------------------------------------------------

        // goto manage package
        if (action.equalsIgnoreCase("manageschool")) {
            RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/manageSchool.jsp");
            rd.forward(request, response);
        }


//------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------------------------

        // this code is for editing the details of the package
        if (action.equalsIgnoreCase("editdetails")) {

            int id = Integer.parseInt(request.getParameter("id"));


            Student student = new AdminService().getBookingDetails1(id);

            request.setAttribute("student", student);


            RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/update_college.jsp");
            rd.forward(request, response);
        }


//------------------------------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------------------------------

        // this is invoked when user press the edit button

        if (action.equalsIgnoreCase("finaledit")) {
            Student student = new Student();
//            int userID = (int) request.getSession().getAttribute("uid");
            System.out.println("I am inside the final edit");


            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
            student.setSchoolname(request.getParameter("name"));
            student.setLocation(request.getParameter("location"));
            student.setFee(request.getParameter("fee"));
            student.setSeat(Integer.parseInt(request.getParameter("seat")));
            student.setScholarship(request.getParameter("scholarship"));
            student.setLevel(request.getParameter("level"));
            student.setFaculty(request.getParameter("faculty"));
            student.setAdmissiondate(request.getParameter("admissionDate"));
            student.setAdmissiondeadline(request.getParameter("admissionDeadline"));
            student.setType(request.getParameter("type"));
            // Assuming setImage method sets the image data
//            student.setImage(request.getParameter("image"));

            System.out.println(student.getImage());

            try {
                new AdminService().finaledit(id, student);

                // Redirect or forward to the appropriate page
                RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/manageSchool.jsp");
                rd.forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
                // Handle the exception
            }
        }


//------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------------------------

        //        Show the registered users
        if (action.equalsIgnoreCase("listuser")) {

            RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/listuser.jsp");
            rd.forward(request, response);
        }


//------------------------------------------------------------------------------------------------------------------------------

//   ------------------------------------------------------------------------------------------------------------------------------------
// for deleting the user
        if (action.equalsIgnoreCase("deleteUser")) {
            int id = Integer.parseInt(request.getParameter("id"));
            AdminService userService = new AdminService();
            userService.deleteUser(id);

            RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/listuser.jsp");
            rd.forward(request, response);
        }

//------------------------------------------------------------------------------------------------------------------------------

//   ------------------------------------------------------------------------------------------------------------------------------------
        // for changing password
        if (action.equalsIgnoreCase("changingpassword")) {
            Student student = new Student();
            HttpSession session = request.getSession();
            String email = (String) session.getAttribute("email");
            student.setPassword((request.getParameter("oldpassword")));
            student.setNewpassword((request.getParameter("newpassword")));
            new AdminService().changePassword(student, email);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);

        }

//---------------------------------------------------------------------------------------------------------------
        if (action.equalsIgnoreCase("changepassword")) {

            RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/changepassword.jsp");
            rd.forward(request, response);

        }


//------------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------
//       For returning to dashboard

        if (action.equalsIgnoreCase("home")) {

            RequestDispatcher rd = request.getRequestDispatcher("Admin_Page/dashboard.jsp");
            rd.forward(request, response);

        }


//------------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------
//       For logout

        if (action.equalsIgnoreCase("logout")) {

                HttpSession session = request.getSession(false);
                session.invalidate();

                RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
                requestDispatcher.forward(request, response);

            }


//------------------------------------------------------------------------------------------------------------------------------


    } // do not delete this

    }





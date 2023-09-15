package Service;

import DBConnection.DBConnection;
import Model.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpSession;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class UserService {

    public void insertUser(Student student) {
        String query = "insert into user(Name, email, Password)" + "values(?,?,?)"; // same as database

        PreparedStatement preparedStatements = new DBConnection().getStatement(query);  // execute parametrized query

        try {
            preparedStatements.setString(1, student.getUserName());
            preparedStatements.setString(2, student.getEmail());
            preparedStatements.setString(3, student.getPassword());

            preparedStatements.execute();

        } catch (
                SQLException e) {
            e.printStackTrace();
        }
    }

//------------------------------------------------------------------------------------------------------------------------------



    public Student getUser(String email, String password) {
        Student student = null;

        String query = "select * from user where email=? and Password=?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                student = new Student();

                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("Name"));

                student.setEmail(rs.getString("email"));
                student.setPassword(rs.getString("Password"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }

//------------------------------------------------------------------------------------------------------------------------------



    //    This is related to list user page
    public List<Student> getUserList() {
        List<Student> userList = new ArrayList<>();
        String query = "select * from user";
        System.out.println(query);
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Student student = new Student();

                student.setId(rs.getInt("id"));
                student.setFullName(rs.getString("fullName"));
                student.setUserName(rs.getString("userName"));
                student.setPassword(rs.getString("password"));


                userList.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }


//------------------------------------------------------------------------------------------------------------------------------


    //    For getting user details in user list
    public Student getUserRow(int id) {
        Student student = new Student();
        String query = "select * from user where id = ?";
        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                student.setId(rs.getInt("id"));
                student.setFullName(rs.getString("fullName"));
                student.setUserName(rs.getString("userName"));
                student.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }


//------------------------------------------------------------------------------------------------------------------------------

    // Delete User
    public void deleteUser(int id) {
        String query = "delete from user where id = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


//------------------------------------------------------------------------------------------------------------------------------

    //    For editing package

    public void editUser(int id, Student student) throws SQLException {
        // Define the SQL query to update the record with the given ID
        String query = "UPDATE book SET Name=?, Schoolname=?, email=?, Address=?, Educationlvl=?, passedoutyear=?, marks=?, newSchoolName=? WHERE id=?";

        try (PreparedStatement pstm = new DBConnection().getStatement(query)) {

            // Set the parameters for the query
            pstm.setString(1, student.getUserName());
            pstm.setString(2, student.getSchoolname());
            pstm.setString(3, student.getEmail());
            pstm.setString(4, student.getAddress());
            pstm.setString(5, student.getEducationlvl());
            pstm.setString(6, student.getPassedouyear());
            pstm.setString(7, student.getMarks());
            pstm.setString(8, student.getNewschoolName());
            pstm.setInt(9, id); // Set the ID parameter

            // Execute the update
            pstm.executeUpdate();
        }
    }

//------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------

    // this for showing the list of packages in the manage policy
    public List<Student> showbooking(int userId) {
        List<Student> bookingDetails = new ArrayList<>();
        String query = "SELECT * FROM book WHERE user_id = ?";
        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setInt(1, userId);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("Name"));
                student.setSchoolname(rs.getString("Schoolname"));
                student.setEmail(rs.getString("email"));
                student.setAddress(rs.getString("Address"));
                student.setEducationlvl(rs.getString("Educationlvl"));
                student.setPassedouyear(rs.getString("passedoutyear"));
                student.setMarks(rs.getString("marks"));
                student.setNewschoolName(rs.getString("newSchoolName"));
                bookingDetails.add(student); // Add each booking to the list
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookingDetails;
    }




//------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------

    // getbooking details 2
    public Student getBookingDetails1(int id) {
        Student student = null;
        try {
            DBConnection db = new DBConnection();
            PreparedStatement pstn = db.getStatement("SELECT * FROM book WHERE id = ?");
            pstn.setInt(1, id);
            ResultSet rs = pstn.executeQuery();

            if (rs.next()) {
                student = new Student();
                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("Name"));
                student.setSchoolname(rs.getString("Schoolname"));
                student.setEmail(rs.getString("email"));
                student.setAddress(rs.getString("Address"));
                student.setEducationlvl(rs.getString("Educationlvl"));
                student.setPassedouyear(rs.getString("passedoutyear"));
                student.setMarks(rs.getString("marks"));
                student.setNewschoolName(rs.getString("newSchoolName"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }



//------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------

    // this is for getting the details for index page and showing images
//    public HashMap<String, Object> getFeaturedColleges() throws SQLException, IOException {
////        int limit = 3; // Fixed limit of 3
//        HashMap<String, Object> details = new HashMap<>();
//
//        // Retrieve the college details with a limit
////        String query = "SELECT id, Location, Fee, Seat, Scholarship, Level, Faculty, Admission_Date, Type, Name, Admission_Deadline, image FROM college ";
//////        String query = "SELECT id, Location, Fee, Seat, Scholarship, Level, Faculty, Admission_Date, Type, Name, Admission_Deadline, image FROM college ORDER BY count DESC LIMIT ?";
////        PreparedStatement ps = new DBConnection().getStatement(query);
////        ps.setInt(1, limit);  // Set the limit as a parameter
////        ResultSet rs = ps.executeQuery();
//
//        // Retrieve all college details
//        String query = "SELECT id, Location, Fee, Seat, Scholarship, Level, Faculty, Admission_Date, Type, Name, Admission_Deadline, image FROM college ";
//
//
////        Connection connection = null;
////        PreparedStatement ps = null;
////        ResultSet rs = null;
//
//        try {
//            PreparedStatement ps = new DBConnection().getStatement(query);
//            ResultSet rs = ps.executeQuery();
//
////            int i = 0;
//            while (rs.next()) {
//                // Retrieve college details for the current row
//                int id = rs.getInt("id");
//                String location = rs.getString("Location");
//                String fee = rs.getString("Fee");
//                int seat = rs.getInt("Seat");
//
//                String scholarship = rs.getString("Scholarship");
//                String level = rs.getString("Level");
//                String faculty = rs.getString("Faculty");
//                String admissionDate = rs.getString("Admission_Date");
//                String type = rs.getString("Type");
//                String name = rs.getString("Name");
//                String admissionDeadline = rs.getString("Admission_Deadline");
//                String image = rs.getString("image"); // Assuming it's a base64 encoded image
//
//                // Add the college details to the HashMap
//                details.put("id" , id);
//                details.put("Location" , location);
//                details.put("Fee" , fee);
//                details.put("Seat" , seat);
//                details.put("Scholarship" , scholarship);
//                details.put("Level" , level);
//                details.put("Faculty" , faculty);
//                details.put("Admission_Date" , admissionDate);
//                details.put("Type" , type);
//                details.put("Name" , name);
//                details.put("Admission_Deadline" , admissionDeadline);
////                details.put("Image" , image); // Assuming it's a base64 encoded image  details.put("id" + i, id);
////                details.put("Location" + i, location);
////                details.put("Fee" + i, fee);
////                details.put("Seat" + i, seat);
////                details.put("Scholarship" + i, scholarship);
////                details.put("Level" + i, level);
////                details.put("Faculty" + i, faculty);
////                details.put("Admission_Date" + i, admissionDate);
////                details.put("Type" + i, type);
////                details.put("Name" + i, name);
////                details.put("Admission_Deadline" + i, admissionDeadline);
////                details.put("Image" + i, image); // Assuming it's a base64 encoded image
//
////                i++;
//            }
//
////            return details;
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return details;
//    }


    public List<Map<String, Object>> getFeaturedColleges() throws SQLException, IOException {
        List<Map<String, Object>> collegeList = new ArrayList<>();

        // Retrieve all college details
        String query = "SELECT id, Location, Fee, Seat, Scholarship, Level, Faculty, Admission_Date, Type, Name, Admission_Deadline, image FROM college ";

        try {
            PreparedStatement ps = new DBConnection().getStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Map<String, Object> collegeDetails = new HashMap<>();
                // Retrieve college details for the current row
                int id = rs.getInt("id");
                String location = rs.getString("Location");
                String fee = rs.getString("Fee");
                int seat = rs.getInt("Seat");
                String scholarship = rs.getString("Scholarship");
                String level = rs.getString("Level");
                String faculty = rs.getString("Faculty");
                String admissionDate = rs.getString("Admission_Date");
                String type = rs.getString("Type");
                String name = rs.getString("Name");
                String admissionDeadline = rs.getString("Admission_Deadline");
                String image = rs.getString("image"); // Assuming it's a base64 encoded image

                // Add the college details to the list
                collegeDetails.put("id", id);
                collegeDetails.put("Location", location);
                collegeDetails.put("Fee", fee);
                collegeDetails.put("Seat", seat);
                collegeDetails.put("Scholarship", scholarship);
                collegeDetails.put("Level", level);
                collegeDetails.put("Faculty", faculty);
                collegeDetails.put("Admission_Date", admissionDate);
                collegeDetails.put("Type", type);
                collegeDetails.put("Name", name);
                collegeDetails.put("Admission_Deadline", admissionDeadline);
                collegeDetails.put("Image", image); // Include the image data

                collegeList.add(collegeDetails);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return collegeList;
    }



//------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------

    // this is for getting the details for index page and showing images
    public List<Student> goToBook(int id) {
        List<Student> students = new ArrayList<>();
        String query = "select * from college where id = ?";
        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setSchoolname(rs.getString("Name"));
                student.setLocation(rs.getString("Location"));
                student.setFee(rs.getString("Fee"));
                student.setSeat(rs.getInt("Seat"));
                student.setScholarship(rs.getString("Scholarship"));
                student.setLevel(rs.getString("Level"));
                student.setFaculty(rs.getString("Faculty"));
                student.setAdmissiondate(rs.getString("Admission_Date"));
                student.setAdmissiondeadline(rs.getString("Admission_Deadline"));
                student.setType(rs.getString("Type"));
                students.add(student);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return students;
    }


//------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------

    public void insertBookingDetails( Student student) {

        String query = "INSERT INTO book(Name, Schoolname, email, Address, Educationlvl, paasedoutyear, marks, newSchoolName, faculty, level) VALUES(?,?,?,?,?,?,?,?,?,?)";

        PreparedStatement preparedStatements = new DBConnection().getStatement(query);  // execute parametrized query

        try {
            preparedStatements.setString(1, student.getUserName());
            preparedStatements.setString(2, student.getSchoolname());
            preparedStatements.setString(3, student.getEmail());
            preparedStatements.setString(4, student.getAddress());
            preparedStatements.setString(5, student.getEducationlvl());
            preparedStatements.setString(6, student.getPassedouyear());
            preparedStatements.setString(7, student.getMarks());
            preparedStatements.setString(8, student.getNewschoolName());
            preparedStatements.setString(9, student.getFaculty());
            preparedStatements.setString(10, student.getLevel());

            preparedStatements.execute();

        } catch (
                SQLException e) {
            e.printStackTrace();
        }
    }


//------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------

    // this code updates the seat number each time a new registrtaion is made
    public void newSeat(int id, int newseat) throws SQLException {
        // Define the SQL query to update the record with the given ID
        String query = "UPDATE college SET Seat = ? WHERE id = ?";

        try (PreparedStatement pstm = new DBConnection().getStatement(query)) {

            // Set the parameters for the query
            pstm.setInt(1, newseat);
            pstm.setInt(2, id);

            // Execute the update
            pstm.executeUpdate();
        }
    }


//------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------------------------

    //This is the method for sorting by username
//    public static List<Student> sortcollege(String location) {
//        List<Student> searchResults = new ArrayList<>();
//        String sql = "SELECT * FROM college WHERE Location LIKE ?";
//        try (PreparedStatement ps = new DBConnection().getStatement(sql)) {
//            ps.setString(1, "%" + location + "%");
//            try (ResultSet rs = ps.executeQuery()) {
//                while (rs.next()) {
//                    Student student = new Student();
//                    student.setId(rs.getInt("bid"));
//                    student.setTitle(rs.getString("btitle"));
//                    student.setAuthor(rs.getString("bauthor"));
//                    student.setIsbn(rs.getString("bisbn"));
//                    student.setPublisher(rs.getString("bpublisher"));
//                    student.setGenre(rs.getString("bgenre"));
//                    student.setLanguage(rs.getString("blanguage"));
//                    student.setPages(rs.getString("bpages"));
//                    student.setLocation(rs.getString("blocation"));
//                    student.setSynopsis(rs.getString("bsynopsis"));
//                    student.setImage(rs.getString("bimage"));
//                    student.setStatus(rs.getString("status"));
//                    searchResults.add(student);
//                }
//            }
//        } catch (SQLException ex) {
//            System.out.println(ex);
//        }
//        return searchResults;
//    }

//------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------

     // to change password
    public Student changePassword(Student student, String email) {
        String query = "UPDATE user SET password = ? WHERE email = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(2, email);
            ps.setString(1, student.getNewpassword());
            ps.executeUpdate();
            System.out.println(ps);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }

//------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------------------------

     // to change college by location
     public List<Student> getBookListbyNew() {
         System.out.println("getBookListbyNew");
         List<Student> bookLists = new ArrayList<>();
         String query = "select * from college Where Location = 'katmandu';";
         System.out.println(query);
         PreparedStatement pstm = new DBConnection().getStatement(query);
         try {
             ResultSet rs = pstm.executeQuery();
             while (rs.next()) {
                 Student student = new Student();
                 student.setId(rs.getInt("id"));
                 student.setSchoolname(rs.getString("Name"));
                 student.setLocation(rs.getString("Location"));
                 student.setFee(rs.getString("Fee"));
                 student.setSeat(rs.getInt("Seat"));
                 student.setScholarship(rs.getString("Scholarship"));
                 student.setLevel(rs.getString("Level"));
                 student.setFaculty(rs.getString("Faculty"));
                 student.setAdmissiondate(rs.getString("Admission_Date"));
                 student.setAdmissiondeadline(rs.getString("Admission_Deadline"));
                 student.setType(rs.getString("Type"));
                 bookLists.add(student);
             }
             System.out.println("bookList.size()" + bookLists.size());
         } catch (SQLException e) {
             e.printStackTrace();
         }
         return bookLists;
     }

//------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------------------------

     // to change college by location lalitpur
     public List<Student> getloclalitpur() {
         System.out.println("getBookListbyNew");
         List<Student> bookLists = new ArrayList<>();
         String query = "select * from college Where Location = 'lalitpur';";
         System.out.println(query);
         PreparedStatement pstm = new DBConnection().getStatement(query);
         try {
             ResultSet rs = pstm.executeQuery();
             while (rs.next()) {
                 Student student = new Student();
                 student.setId(rs.getInt("id"));
                 student.setSchoolname(rs.getString("Name"));
                 student.setLocation(rs.getString("Location"));
                 student.setFee(rs.getString("Fee"));
                 student.setSeat(rs.getInt("Seat"));
                 student.setScholarship(rs.getString("Scholarship"));
                 student.setLevel(rs.getString("Level"));
                 student.setFaculty(rs.getString("Faculty"));
                 student.setAdmissiondate(rs.getString("Admission_Date"));
                 student.setAdmissiondeadline(rs.getString("Admission_Deadline"));
                 student.setType(rs.getString("Type"));
                 bookLists.add(student);
             }
             System.out.println("bookList.size()" + bookLists.size());
         } catch (SQLException e) {
             e.printStackTrace();
         }
         return bookLists;
     }

//------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------------------------

     // to change college by location bhaktapur
     public List<Student> getlocbhaktapur() {
         System.out.println("getBookListbyNew");
         List<Student> bookLists = new ArrayList<>();
         String query = "select * from college Where Location = 'Bhaktapur';";
         System.out.println(query);
         PreparedStatement pstm = new DBConnection().getStatement(query);
         try {
             ResultSet rs = pstm.executeQuery();
             while (rs.next()) {
                 Student student = new Student();
                 student.setId(rs.getInt("id"));
                 student.setSchoolname(rs.getString("Name"));
                 student.setLocation(rs.getString("Location"));
                 student.setFee(rs.getString("Fee"));
                 student.setSeat(rs.getInt("Seat"));
                 student.setScholarship(rs.getString("Scholarship"));
                 student.setLevel(rs.getString("Level"));
                 student.setFaculty(rs.getString("Faculty"));
                 student.setAdmissiondate(rs.getString("Admission_Date"));
                 student.setAdmissiondeadline(rs.getString("Admission_Deadline"));
                 student.setType(rs.getString("Type"));
                 bookLists.add(student);
             }
             System.out.println("bookList.size()" + bookLists.size());
         } catch (SQLException e) {
             e.printStackTrace();
         }
         return bookLists;
     }

//------------------------------------------------------------------------------------------------------------------------------






}
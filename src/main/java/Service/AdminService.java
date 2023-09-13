package Service;

import DBConnection.DBConnection;
import Model.Student;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

public class AdminService {

    public Student getUser(String username, String password){
        Student student = null;

        String query = "select * from adminlogin where username = ? and password = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            System.out.println(ps);

            while (rs.next()) {
                student = new Student();

                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("username"));
//                student.setEmail(rs.getString("email"));
                student.setPassword(rs.getString("password"));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return student;
    }



    // AdminService.java
    public void register(Student student) {
        String query = "INSERT INTO college (Name, Location, Fee, Seat, Scholarship, Level, Faculty, Admission_Date, Admission_Deadline, Type, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"; // corrected SQL query

        PreparedStatement preparedStatement = new DBConnection().getStatement(query);  // use getPreparedStatement instead of getStatement

        try {
            preparedStatement.setString(1, student.getSchoolname());
            preparedStatement.setString(2, student.getLocation());
            preparedStatement.setString(3, student.getFee());
            preparedStatement.setInt(4, student.getSeat()); // use setInt to bind an integer
//            student.setSeat(Integer.parseInt(request.getParameter("seat")));

            preparedStatement.setString(5, student.getScholarship());
            preparedStatement.setString(6, student.getLevel());
            preparedStatement.setString(7, student.getFaculty());
            preparedStatement.setString(8, student.getAdmissiondate());
            preparedStatement.setString(9, student.getAdmissiondeadline());
            preparedStatement.setString(10, student.getType());
            preparedStatement.setString(11, student.getImage());

            preparedStatement.executeUpdate(); // use executeUpdate for INSERT operations

            preparedStatement.close(); // close the prepared statement
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public HashMap<String, Object> showschool(Student student) throws SQLException {
        HashMap<String, Object> details = new HashMap<>();
        String base64Image = "";

        // Execute the SELECT query to retrieve data from the 'college' table
        String selectQuery = "SELECT Name, Location, Fee, Seat, Scholarship, Level, Faculty, Admission_Date, Admission_Deadline, Type, image FROM college";
        PreparedStatement selectPS = new DBConnection().getStatement(selectQuery);

        ResultSet rs = selectPS.executeQuery();
        if (rs.next()) {
            // Read the image data into a byte array
            byte[] fileContent = rs.getBytes("image");

            // Convert the byte array to a base64 string
            base64Image = Base64.getEncoder().encodeToString(fileContent);

            // Add the college details to the HashMap
            String name = rs.getString("Name");
            String location = rs.getString("Location");
            double fee = rs.getDouble("Fee");
            int seat = rs.getInt("Seat");
            double scholarship = rs.getDouble("Scholarship");
            String level = rs.getString("Level");
            String faculty = rs.getString("Faculty");
            String admissionDate = rs.getString("Admission_Date");
            String admissionDeadline = rs.getString("Admission_Deadline");
            String type = rs.getString("Type");

            details.put("name", name);
            details.put("location", location);
            details.put("fee", fee);
            details.put("seat", seat);
            details.put("scholarship", scholarship);
            details.put("level", level);
            details.put("faculty", faculty);
            details.put("admissionDate", admissionDate);
            details.put("admissionDeadline", admissionDeadline);
            details.put("type", type);
            details.put("image", base64Image);
        }

        return details;



//        this can be used to make sure that only 4 element is seen
//        public HashMap<String, Object> showProperties() throws SQLException {
//            HashMap<String, Object> propertyDetails = new HashMap<>();
//
//            // Execute the SELECT query to retrieve data from the 'property' table
//            String selectQuery = "SELECT * FROM property";
//            PreparedStatement selectPS = new DBConnection().getStatement(selectQuery);

//            try {
//                ResultSet rs = selectPS.executeQuery();
//                int counter = 0;
//                while (rs.next() && counter < 4) {
//                    // Read property details from the result set
//                    String title = rs.getString("title");
//                    String imageBase64 = rs.getString("image"); // Assuming 'image' is the column name for images in your database
//
//                    // Add property details to the HashMap
//                    propertyDetails.put("title" + counter, title);
//                    propertyDetails.put("image" + counter, imageBase64);
//                    counter++;
//                }
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
//
//            return propertyDetails;
//        }

    }

    // this for showing the list of packages in the manage policy
    public List<Student> showbooking() {
        List<Student> bookingDetails = new ArrayList<>();
        try {
            DBConnection db = new DBConnection();
            PreparedStatement pstn = db.getStatement("SELECT * FROM college");
            ResultSet rs = pstn.executeQuery();
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
                // Assuming you have a setImage method for setting the image data
                student.setImage(rs.getString("image"));;

                bookingDetails.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookingDetails;
    }


    //    This will work after user press the edit button
    public void finaledit(int id, Student student) throws SQLException {
        String query = "UPDATE college SET Name=?, Location=?, Fee=?, Seat=?, Scholarship=?, Level=?, Faculty=?, Admission_Date=?, Admission_Deadline=?, Type=? WHERE id=?";
        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setString(1, student.getSchoolname());
            pstm.setString(2, student.getLocation());
            pstm.setString(3, student.getFee());
            pstm.setInt(4, student.getSeat());
            pstm.setString(5, student.getScholarship());
            pstm.setString(6, student.getLevel());
            pstm.setString(7, student.getFaculty());
            pstm.setString(8, student.getAdmissiondate());
            pstm.setString(9, student.getAdmissiondeadline());
            pstm.setString(10, student.getType());
            // Assuming setImage method sets the image data
//            pstm.setString(11, student.getImage());
            pstm.setInt(11, id);
            pstm.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


//------------------------------------------------------------------------------------------------------------------------------

    // Delete School
    public void deleteSchool(int id) {
        String query = "delete from college where id = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


//------------------------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------------------------

//    This will show the details from the database
    public Student getBookingDetails1(int id) {
        Student student = null;
        try {
            DBConnection db = new DBConnection();
            PreparedStatement pstn = db.getStatement("SELECT * FROM college WHERE id = ?");
            pstn.setInt(1, id);
            ResultSet rs = pstn.executeQuery();

            if (rs.next()) {
                student = new Student();
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
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }



//------------------------------------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------------------------------


    // this for showing the list of users in the manage users
    public List<Student> showUsers() {
        List<Student> bookingDetails = new ArrayList<>();
        try {
            DBConnection db = new DBConnection();
            PreparedStatement pstn = db.getStatement("SELECT * FROM user");
            ResultSet rs = pstn.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("Name"));
                student.setEmail(rs.getString("email"));
                student.setPassedouyear(rs.getString("Password"));

                bookingDetails.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookingDetails;
    }





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

    // Delete School
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


}

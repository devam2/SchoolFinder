package DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnection {

    Connection connection = null;


    public DBConnection(){
        try{


            Class.forName("com.mysql.jdbc.Driver");
            String dburl = "jdbc:mysql://localhost:3306/collegefinder";
            String dbname="root";
            String dbpassword="";

            connection = DriverManager.getConnection(dburl,dbname,dbpassword);
            System.out.println("DB CONNECTED");

        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    public static void main(String[] args) throws SQLException {
        DBConnection OBJ = new DBConnection();
    }
    public PreparedStatement getStatement (String query){
        PreparedStatement preparedStatement = null;
        try{
            preparedStatement= connection.prepareStatement(query);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return preparedStatement;
    }
}


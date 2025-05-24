MySQL assignment 2
Write a program for JDBC to connectivity and insert the below data
import java.sql.*;

public class JDBCInsertExample {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/your_database_name"; // Replace with your DB name
        String username = "your_username"; // Replace with your DB username
        String password = "your_password"; // Replace with your DB password

        try {
            // Load JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to database
            Connection conn = DriverManager.getConnection(url, username, password);

            // Prepare insert statement
            String sql = "INSERT INTO employee (empcode, empname, empage, esalary) VALUES (?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);

            // Insert record 1
            pstmt.setInt(1, 101);
            pstmt.setString(2, "Jenny");
            pstmt.setInt(3, 25);
            pstmt.setInt(4, 10000);
            pstmt.executeUpdate();

            // Insert record 2
            pstmt.setInt(1, 102);
            pstmt.setString(2, "Jacky");
            pstmt.setInt(3, 30);
            pstmt.setInt(4, 20000);
            pstmt.executeUpdate();

            // Insert record 3
            pstmt.setInt(1, 103);
            pstmt.setString(2, "Joe");
            pstmt.setInt(3, 20);
            pstmt.setInt(4, 40000);
            pstmt.executeUpdate();

            // Insert record 4
            pstmt.setInt(1, 104);
            pstmt.setString(2, "John");
            pstmt.setInt(3, 40);
            pstmt.setInt(4, 80000);
            pstmt.executeUpdate();

            // Insert record 5 (Shameer)
            pstmt.setInt(1, 105);
            pstmt.setString(2, "Shameer");
            pstmt.setInt(3, 25);
            pstmt.setInt(4, 90000);
            pstmt.executeUpdate();

            System.out.println("All records inserted successfully.");

            // Close resources
            pstmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
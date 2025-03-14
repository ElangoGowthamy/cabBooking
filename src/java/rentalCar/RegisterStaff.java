package rentalCar;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegisterStaff {
    
    public static String registerStaff(User bean, String staffType) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String returnString = "error";
        
        try {
            // Get connection object from ConnectionProvider.java
            conn = ConnectionProvider.getConnection();
            conn.setAutoCommit(false); // Start transaction
            
            // Check if email already exists
            ps = conn.prepareStatement("SELECT email FROM User WHERE email=?");
            ps.setString(1, bean.getEmail());
            rs = ps.executeQuery();
            
            if(rs.next()) {
                return "exists"; // Email already exists
            }
            
            // Insert into User table
            ps = conn.prepareStatement(
                "INSERT INTO User (name, email, address, city, phone, pwd, active) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)", 
                Statement.RETURN_GENERATED_KEYS
            );
            
            ps.setString(1, bean.getName());
            ps.setString(2, bean.getEmail());
            ps.setString(3, bean.getAddress());
            ps.setString(4, bean.getCity());
            ps.setString(5, bean.getPhone());
            ps.setString(6, bean.getPwd());
            ps.setString(7, "active");
            
            int result = ps.executeUpdate();
            
            if(result > 0) {
                // Get the generated userId
                rs = ps.getGeneratedKeys();
                if(rs.next()) {
                    int userId = rs.getInt(1);
                    
                    // Insert into Staff table
                    ps = conn.prepareStatement(
                        "INSERT INTO Staff (staffType, userId) VALUES (?, ?)"
                    );
                    ps.setString(1, staffType);
                    ps.setInt(2, userId);
                    
                    result = ps.executeUpdate();
                    
                    if(result > 0) {
                        conn.commit();
                        returnString = String.valueOf(userId) + "-" + bean.getName() + "-" + staffType;
                    } else {
                        conn.rollback();
                        returnString = "error";
                    }
                }
            }
            
        } catch (Exception ex) {
            try {
                if(conn != null) {
                    conn.rollback();
                }
            } catch(Exception e) {
                e.printStackTrace();
            }
            ex.printStackTrace();
            returnString = "exception";
        } finally {
            try {
                if(rs != null) rs.close();
                if(ps != null) ps.close();
                if(conn != null) conn.close();
            } catch(Exception e) {
                e.printStackTrace();
            }
        }
        return returnString;
    }
} 
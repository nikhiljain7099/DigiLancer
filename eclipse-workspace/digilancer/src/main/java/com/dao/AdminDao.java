package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.AdminModel;
import com.model.ClientModel;
import com.util.DBUtil;

public class AdminDao {
	Connection cn = null;
	int x = 0;
	public int insertAdmin(AdminModel amodel) {
		String qry = "insert into admin(name,email,password) values(?,?,?)";
		try {
			cn = new DBUtil().getConnectionData();
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1, amodel.getName());
			st.setString(2, amodel.getEmail());
			st.setString(3, amodel.getPassword());
			x = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	public AdminModel getLogin(AdminModel model) {
	    Connection cn = new DBUtil().getConnectionData();
	    String qry = "select * from admin where email=? and password=?";
	    try {
	        PreparedStatement st = cn.prepareStatement(qry);
	        st.setString(1, model.getEmail());
	        st.setString(2, model.getPassword());
	        ResultSet rs = st.executeQuery();
	        AdminModel lmodel = null;
	        System.out.println("Inner 45");
	        boolean hasRows = false;
	        while(rs.next()) {
	            hasRows = true;
	            lmodel = new AdminModel();
	            lmodel.setAdminId(rs.getInt("adminid"));
	            lmodel.setName(rs.getString("name"));
	            lmodel.setEmail(rs.getString("email"));
	            lmodel.setPassword(rs.getString("password"));
	            lmodel.setSuperAdmin(rs.getString("superadmin"));
	        }
	        if (!hasRows) {
	            lmodel = null;
	        }
	        return lmodel;
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return null;
	    } finally {
	        // Close database connection if needed
	    }
	}
	public boolean deleteRecord(int clientid) {
        Connection connection = null;
        PreparedStatement statement = null;
        boolean success = false;
        
        try {
            // Get connection
            connection = new DBUtil().getConnectionData(); // Implement this method in your DBUtil class
            
            // Prepare the delete statement
            String sql = "DELETE FROM client WHERE clientid = ?";
            statement = connection.prepareStatement(sql);
            
            // Set the parameter
            statement.setInt(1, clientid);
            
            // Execute the delete statement
            int rowsAffected = statement.executeUpdate();
            
            // Check if any rows were affected
            if (rowsAffected > 0) {
                success = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle any SQL exceptions
        }
        
        return success;
    }
	public boolean deleteRecordFreelancer(int freelancerid) {
        Connection connection = null;
        PreparedStatement statement = null;
        boolean success = false;
        
        try {
            // Get connection
            connection = new DBUtil().getConnectionData(); // Implement this method in your DBUtil class
            
            // Prepare the delete statement
            String sql = "DELETE FROM freelancer WHERE freelancerid = ?";
            statement = connection.prepareStatement(sql);
            
            // Set the parameter
            statement.setInt(1, freelancerid);
            
            // Execute the delete statement
            int rowsAffected = statement.executeUpdate();
            
            // Check if any rows were affected
            if (rowsAffected > 0) {
                success = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle any SQL exceptions
        }
        
        return success;
    }
	
}

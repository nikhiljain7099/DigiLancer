package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.BlogModel;
import com.util.DBUtil;

public class BlogDao {
	// Insert a new blog entry into the database
    public int insertBlog(BlogModel blogModel) throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;
        int result = 0;

        try {
            // Get a database connection
            conn = new DBUtil().getConnectionData();

            // Prepare the SQL statement
            String sql = "INSERT INTO dlc (title, content, titleimage, user) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, blogModel.getTitle());
            stmt.setString(2, blogModel.getContent());
            stmt.setString(3, blogModel.getTitleImage());
            stmt.setString(4, blogModel.getUser());

            // Execute the SQL statement
            result = stmt.executeUpdate();
        } finally {
            // Close the statement and connection
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return result;
    }
}

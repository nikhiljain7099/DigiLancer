package com.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.ClientModel;
import com.model.ClientModel;
import com.util.DBUtil;

public class ClientDao {
	Connection cn = null;
	int x = 0;
	public int insertClient(ClientModel cmodel) {
		String qry = "insert into client(firstname,lastname,email,password,profileimage,companyname,about,website) values(?,?,?,?,?,?,?,?)";
		try {
			cn = new DBUtil().getConnectionData();
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1, cmodel.getFirstname());
			st.setString(2, cmodel.getLastname());
			st.setString(3, cmodel.getEmail());
			st.setString(4, cmodel.getPassword());
			st.setString(5, cmodel.getProfileImage());
			st.setString(6, cmodel.getCompanyName());
			st.setString(7, cmodel.getAbout());
			st.setString(8, cmodel.getWebsite());
			x = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
	}
	ClientModel lmodel = null;
	public ClientModel getLogin(ClientModel model) {
		Connection cn = new DBUtil().getConnectionData();
		String qry = "select * from client where email=? and password=?";
		try {
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1,model.getEmail());
			st.setString(2, model.getPassword());
			ResultSet rs = st.executeQuery();
			lmodel = new ClientModel();
			boolean hasRows = false;
			System.out.println("model: "+lmodel.getFirstname()+"Hello");
			while(rs.next()) {
				hasRows=true;
				lmodel.setclientId(rs.getInt("clientid"));
				lmodel.setFirstname(rs.getString("firstname"));
				lmodel.setLastname(rs.getString("lastname"));
				lmodel.setEmail(rs.getString("email"));
				lmodel.setPassword(rs.getString("password"));
				lmodel.setAbout(rs.getString("about"));
				lmodel.setCompanyName(rs.getString("companyname"));
				lmodel.setProfileImage(rs.getString("profileimage"));
				lmodel.setWebsite(rs.getString("about"));
				lmodel.setCreatedAt(rs.getString("createdat"));
			}
			if (!hasRows) {
	            lmodel = null;
	        }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lmodel;
	}

}

package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.ClientModel;
import com.model.FreelancerModel;
import com.util.DBUtil;

public class FreelancerDao {
	Connection cn = null;
	int x = 0;
	public int insertFreelancer(FreelancerModel fmodel) {
		String qry = "insert into freelancer(firstname,lastname,email,password,bio,skills,profile_picture,portfolioplatform,portfoliolink,ugprogramme,ugfrom,ugto,uguniversity,pgprogramme,pgfrom,pgto,pguniversity) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			cn = new DBUtil().getConnectionData();
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1, fmodel.getFirstName());
			st.setString(2, fmodel.getLastName());
			st.setString(3, fmodel.getEmail());
			st.setString(4, fmodel.getPassword());
			st.setString(5, fmodel.getBio());
			st.setString(6, fmodel.getSkills());
			st.setString(7, fmodel.getProfilePicture());
			st.setString(8,fmodel.getPortfolioplatform());
			st.setString(9, fmodel.getPortfoliolink());
			st.setString(10, fmodel.getUgprogramme());
			st.setInt(11, fmodel.getUgfrom());
			st.setInt(12, fmodel.getUgto());
			st.setString(13, fmodel.getUguniversity());
			st.setString(14, fmodel.getPgprogramme());
			st.setInt(15, fmodel.getPgfrom());
			st.setInt(16, fmodel.getPgto());
			st.setString(17, fmodel.getPguniversity());
			x = st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
		}
	FreelancerModel lmodel = null;
	public FreelancerModel getLogin(FreelancerModel model) {
		Connection cn = new DBUtil().getConnectionData();
		String qry = "select * from freelancer where email=? and password=?";
		try {
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1,model.getEmail());
			st.setString(2, model.getPassword());
			ResultSet rs = st.executeQuery();
			lmodel = new FreelancerModel();
			boolean hasRows = false;
			System.out.println("model: "+lmodel.getFirstName()+"Hello");
			while(rs.next()) {
				hasRows=true;
				lmodel.setFreelancerId(rs.getInt("freelancerid"));
				lmodel.setFirstName(rs.getString("firstname"));
				lmodel.setLastName(rs.getString("lastname"));
				lmodel.setEmail(rs.getString("email"));
				lmodel.setPassword(rs.getString("password"));
				lmodel.setBio(rs.getString("bio"));
				lmodel.setSkills(rs.getString("skills"));
				lmodel.setProfilePicture(rs.getString("profile_picture"));
				lmodel.setCreatedAt(rs.getString("createdat"));
				lmodel.setPortfolioplatform(rs.getString("portfolioplatform"));
				lmodel.setPortfoliolink(rs.getString("portfoliolink"));
				lmodel.setUgprogramme(rs.getString("ugprogramme"));
				lmodel.setUguniversity(rs.getString("uguniversity"));
				lmodel.setUgfrom(rs.getInt("ugfrom"));
				lmodel.setUgto(rs.getInt("ugto"));
				lmodel.setPgprogramme(rs.getString("pgprogramme"));
				lmodel.setPguniversity(rs.getString("pguniversity"));
				lmodel.setPgfrom(rs.getInt("pgfrom"));
				lmodel.setPgto(rs.getInt("pgto"));
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
	public int shortlistFreelancer(FreelancerModel model) {
		cn = new DBUtil().getConnectionData();
		int x=0;
		try {
		PreparedStatement st = cn.prepareStatement("UPDATE freelancer SET shortlist = 'yes' WHERE freelancerid = ?");
        st.setInt(1, model.getFreelancerId());
        x = st.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
        return x;
	}

}

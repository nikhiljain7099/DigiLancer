package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.ClientModel;
import com.model.ProjectModel;
import com.util.DBUtil;

public class ProjectDao {
	Connection cn = null;
	int x = 0;
	public int insertProject(ProjectModel pmodel) {
		String qry = "insert into project(projectname,category,description,min,max,clientid,deadline) values(?,?,?,?,?,?,?)";
		try {
			cn = new DBUtil().getConnectionData();
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1, pmodel.getProjectName());
			st.setString(2, pmodel.getCategory());
			st.setString(3, pmodel.getDescription());
			st.setInt(4, pmodel.getMinAmount());
			st.setInt(5, pmodel.getMaxAmount());
			st.setInt(6, pmodel.getClientId());
			st.setInt(7,pmodel.getDeadline());
			x = st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
	public int editProject(ProjectModel pmodel) {
		String qry = "update project set projectname=?,category=?,description=?,min=?,max=?,deadline=? where projectid=?";
		try {
			cn = new DBUtil().getConnectionData();
			PreparedStatement st = cn.prepareStatement(qry);
			st.setString(1, pmodel.getProjectName());
			st.setString(2, pmodel.getCategory());
			st.setString(3, pmodel.getDescription());
			st.setInt(4, pmodel.getMinAmount());
			st.setInt(5, pmodel.getMaxAmount());
			st.setInt(6, pmodel.getDeadline());
			st.setInt(7, pmodel.getProjectId());
			x = st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
	public int deleteProject(ProjectModel pmodel) {
		String qry = "delete from project where projectid=?";
		try {
			cn = new DBUtil().getConnectionData();
			PreparedStatement st = cn.prepareStatement(qry);
			st.setInt(1, pmodel.getProjectId());
			x = st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
	public int saveProject(ProjectModel pmodel) {
		String qry = "update project set save='yes' where projectid=?";
		try {
			cn = new DBUtil().getConnectionData();
			PreparedStatement st = cn.prepareStatement(qry);
			st.setInt(1, pmodel.getProjectId());
			x = st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
	public int applyProject(ProjectModel pmodel) {
		String qry = "update project set apply='yes' where projectid=?";
		try {
			cn = new DBUtil().getConnectionData();
			PreparedStatement st = cn.prepareStatement(qry);
			st.setInt(1, pmodel.getProjectId());
			x = st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
}

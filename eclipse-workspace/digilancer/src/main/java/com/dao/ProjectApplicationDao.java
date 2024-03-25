package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.ProjectApplicationModel;
import com.model.ProjectModel;
import com.util.DBUtil;

public class ProjectApplicationDao {
	Connection cn = null;
	int x = 0;
	public int insertProjectApplication(ProjectApplicationModel pmodel) {
		String qry = "insert into project_application(projectid,amount,expectedcompletiontime,proposal,freelancerid) values(?,?,?,?,?)";
		try {
			cn = new DBUtil().getConnectionData();
			PreparedStatement st = cn.prepareStatement(qry);
			st.setInt(1, pmodel.getProjectId());
			st.setInt(2, pmodel.getAmount());
			st.setInt(3, pmodel.getExpectedCompletionTime());
			st.setString(4, pmodel.getProposal());
			st.setInt(5, pmodel.getFreelancerId());
			x = st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
}

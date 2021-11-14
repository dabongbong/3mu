package dao;

import java.sql.*;
import java.util.ArrayList;
import javax.naming.NamingException;
import util.ConnectionPool;

public class MBoardDAO {
	public ArrayList<MBoardObj> getlist() throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from MBoard order by mtime desc";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<MBoardObj> mboards = new ArrayList<MBoardObj>();
			
			while(rs.next()) {
				mboards.add(new MBoardObj(rs.getString("mno"),rs.getString("id"),rs.getString("msub"),rs.getString("mtitle"),rs.getString("mcontent"),rs.getString("mimg"),rs.getString("mtime")));
			}
			return mboards;
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) rs.close();
			if(conn != null) conn.close();
		}
	}
	
	public boolean insert(String id, String msub, String mtitle, String mcontent, String mimg) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into MBoard(id, msub, mtilte, mcontent, mimg) values(?,?,?,?,?)";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, msub);
				pstmt.setString(3, mtitle);
				pstmt.setString(4, mcontent);
				pstmt.setString(5, mimg);
				
			int count = pstmt.executeUpdate();
			return(count == 1)? true:false;
		}finally {
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		}
				
	}
	
	
	
}

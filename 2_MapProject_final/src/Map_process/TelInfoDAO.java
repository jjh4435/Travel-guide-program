package Map_process;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Map_process.TelInfoDBConn;
import Map_process.TelInfoVO;

public class TelInfoDAO {
	
	
	
	
	private Connection con;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public TelInfoDAO() throws ClassNotFoundException, SQLException {
		con = new TelInfoDBConn().getConnection();
	}
	
	public void pstmtClose() throws SQLException{
		if (pstmt != null) {
			pstmt.close();
		}
	}
		public void getAllInfoClose() throws SQLException{
		if(rs != null) {rs.close();}
		if(pstmt != null) {pstmt.close();}
		if(con != null) {con.close();}
	}
	
	public boolean insert_local(String local, String link, String pic,String id_check) {
		String sql = "insert into LocalTable values(?,?,?,?)";
		
		try {
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,local);
		pstmt.setString(2,link);
		pstmt.setString(3,pic);
		pstmt.setString(4, id_check);
	
		pstmt.executeUpdate();
		}catch(SQLException e) {
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}
	public ArrayList<TelInfoVO> getAllInfo(String id_check1) throws SQLException{
		ArrayList<TelInfoVO> tiarray
							=new ArrayList<TelInfoVO>();
	
		String sql
			= "SELECT * FROM LocalTable where id_check = ? ORDER BY local";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1,id_check1);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String local = rs.getString("local");
			String link = rs.getString("link");
			String pic = rs.getString("pic");
			
			TelInfoVO tv = new TelInfoVO(local,link,pic);
			tiarray.add(tv);
			
		}
		return tiarray;
		
	}///////////////////////
	
	
	public TelInfoVO search_local(String oriLocal)
			throws SQLException{
		
		/*System.out.printf(oriLocal);*/
		TelInfoVO tv=null;
		/*String sql = "SELECT * FROM LocalTable where local=?";*/
		String sql = "SELECT * FROM LocalTable where local=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, oriLocal);
	
		rs = pstmt.executeQuery();
		if(rs.next()){
			String local=rs.getString("local");
			String link=rs.getString("link");
			String pic=rs.getString("pic");
			tv=new TelInfoVO(local,link,pic);
			
	}else { 
		tv=null; 
		}
	return tv;
		
	}
				
	
	
	
	public boolean delete_local(String local2) {
		String sql = "delete from LocalTable where local=?";
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1,local2);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("delete exception");
			return false;
		}
		return true;
	}
	
	
	
}

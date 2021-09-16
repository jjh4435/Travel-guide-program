package mapDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import mapDBConn.MapDBConn;
import mapVO.MapVO;

public class MapDAO {
	private Connection con1;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public MapDAO()  
			throws ClassNotFoundException, SQLException{
		con1= new MapDBConn().connect();
	}
	public void pstmtClose() throws SQLException{
		if(pstmt != null){ pstmt.close(); }
	}

	public void getAllInfoClose() throws SQLException{
		if(rs != null){ rs.close(); }
		if(pstmt != null){ pstmt.close(); }
		if(con1 != null){ con1.close(); }
	}


	
	public ArrayList<MapVO> getAllInfo() 
			throws SQLException{
		ArrayList<MapVO> tiarray 
		               = new ArrayList<MapVO>();
		String sql 
		= "SELECT * FROM TRAVEL8";
		pstmt = con1.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){

			String area_Name = rs.getString("area_Name");
			String user_Comment = rs.getString("user_Comment");
	
			MapVO tv = new MapVO(area_Name,user_Comment);
			tiarray.add(tv);
		}
		return tiarray;
	}
	
	public MapVO search_aName(String oriName)//서울남산타워
	
			throws SQLException{
	MapVO tv=null;
	String sql = "SELECT * FROM TRAVEL8 where area_Name=?";
		//? : 원하는 장소 이름
	pstmt = con1.prepareStatement(sql);
	pstmt.setString(1, oriName);
	rs = pstmt.executeQuery();//
	if(rs.next()){
			
			String area_Name=rs.getString("area_Name");
			String user_Comment=rs.getString("user_Comment");
			
			tv=new MapVO(area_Name,user_Comment);
	 
	}else { 
		tv=null;
		}
	return tv;//
	}


	
	
	public boolean update__aName(String user_Comment,String area_Name){
	    //area_Name->user_Comment 
String sql = "update TRAVEL8 set user_Comment=? where area_Name=?";
try{
		pstmt=con1.prepareStatement(sql);

		pstmt.setString(1,user_Comment);
		pstmt.setString(2,area_Name);
		pstmt.executeUpdate();////////////
	}catch(SQLException e){
		System.out.println("update Exception");
		return false;
	}
	return true;
}

	
	
	
	
	public boolean delete_aName(String area_Name){
	String sql = "delete from TRAVEL8 where area_Name=?";
	                                            
		try{
			pstmt=con1.prepareStatement(sql);
			pstmt.setString(1, area_Name);
			pstmt.executeUpdate();
		}catch(SQLException e){
			System.out.println("delete Exception");
			return false;
		}
		return true;
	}
}



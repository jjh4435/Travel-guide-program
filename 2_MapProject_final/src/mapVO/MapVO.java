package mapVO;

public class MapVO {

	private String area_Name ;
	
	private String user_Comment;
	

	public MapVO() {
	}
	
	public MapVO(String area_Name , String user_Comment) {
		this.area_Name = area_Name;
		this.user_Comment = user_Comment;
	}

	public String getArea_Name() {
		return area_Name;
	}

	public void setArea_Name(String area_Name) {
		this.area_Name = area_Name;
	}

	public String getUser_Comment() {
		return user_Comment;
	}

	public void setUser_Comment(String user_Comment) {
		this.user_Comment = user_Comment;
	}
	
	
	
}

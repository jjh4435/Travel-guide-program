package mapUserVO;

public class MapUserVO {
	
	private String userName;
	private String userId;
	private String userPw;
	private String email;
	private String nickname;
	private String address;

	
	public MapUserVO() {
	}
	
	
	public MapUserVO(String userName , String userPw, String userId, String email , String nickname, String address) {
		
		this.address = address;
		this.email = email;
		this.nickname = nickname;
		this.userId = userId;
		this.userName = userName;
		this.userPw = userPw;
		
		
	}
	
	
	
	//getter | setter
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}


	

}

package frontController.map.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import mapDBConn.MapDBConn;


@WebServlet("/register")
public class MapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MapController() {
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO MAPLOGIN VALUES (?,?,?,?,?,?,?)";
		
		String id = request.getParameter("userId");
		String nickname = request.getParameter("nickname");
		String pw = request.getParameter("userPw");
		String name = request.getParameter("userName");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String sDate = request.getParameter("sDate");
		
		boolean isSucess = true;
		
		try {
			conn = MapDBConn.connect();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, pw);
			pstmt.setString(4, email);
			pstmt.setString(5, nickname);
			pstmt.setString(6, gender);
			pstmt.setString(7,sDate);
			
			
			pstmt.execute();
		}catch(Exception e) {
			e.printStackTrace();
			isSucess = false;
		}finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				if (pstmt != null) 
					conn.close();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if (isSucess) {
			request.setCharacterEncoding("utf-8");
			
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("회원가입에 성공하였습니다.");
			writer.println("<script>");
			writer.println("alert('회원가입 성공!')");
			writer.println("location.href='Login.jsp'");
			writer.println("</script>");
		}
		
		
		
		
		
		
		
		doGet(request, response);
	}

}

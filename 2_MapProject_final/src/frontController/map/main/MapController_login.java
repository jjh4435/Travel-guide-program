package frontController.map.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import mapDBConn.MapDBConn;

@WebServlet("/login")
public class MapController_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MapController_login() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("Login.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPw");
		
		String sql = "SELECT * FROM MAPLOGIN WHERE USERID = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		HttpSession session = request.getSession();
		
		try {
			conn = MapDBConn.connect();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String name = rs.getString("name");
				String nickname = rs.getString("nickname");
				String gender = rs.getString("gender");
				String sDate = rs.getString("sDate");
				String email = rs.getString("email");
				
				if(pw.equals(rs.getString("userPw"))) {
					
					session.setAttribute("userId", id);
					session.setAttribute("name", name);
					session.setAttribute("nickname", nickname);
					session.setAttribute("gender", gender);
					session.setAttribute("sDate", sDate);
					session.setAttribute("email", email);
					
					request.setCharacterEncoding("utf-8");
					
					response.setContentType("text/html;charset=UTF-8");
					PrintWriter writer = response.getWriter();
					writer.println("<script>");
					writer.println("location.href='seoul_login.html'");
					writer.println("</script>");
				}
				
				
				
			
			
				
				
			}else {
				response.sendRedirect("Login.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs!=null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
	}

}

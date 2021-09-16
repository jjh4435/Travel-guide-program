package Map_process;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.sun.xml.internal.txw2.Document;

import Map_process.TelInfoDAO;


@WebServlet("/map_process")
public class map_process extends HttpServlet {
	

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		String local = request.getParameter("slct2");

		String location1 = request.getParameter("search");
		
		String location2 = request.getParameter("save");
		
		String search=request.getParameter("txtsearch");
		
		String id_check = request.getParameter("id_check");
		
		System.out.println("검색 : "+ location1); //검색
		System.out.println("즐겨찾기 : "+ location2);//즐겨찾기
		System.out.println("관광지 : " + local);//관광지
		System.out.println("검색창 : "+ search);//text 검색
		System.out.println("id_check : " + id_check);//id_check
		if("검색".equals(location1)&&"도봉산".equals(local)||"도봉산".equals(search)||"ehqhdtks".equals(search)){
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("B_3_seoul_DobongSan.jsp");
			dispatcher.forward(request, response);
		}


		else if("검색".equals(location1)&&"청계천".equals(local)||"청계천".equals(search)||"cjdrPcjs".equals(search)){
				RequestDispatcher dispatcher = request.getRequestDispatcher("B_1_seoul_chungyechen.jsp");
				dispatcher.forward(request, response);
			
		}

		else if("검색".equals(location1)&&"남산공원".equals(local)||"남산공원".equals(search)||"skatksrhddnjs".equals(search)||"남산 공원".equals(search)||"skatks rhddnjs".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("B_2_seoul_Namsan.jsp");
			dispatcher.forward(request, response);
			
		}
		//==============================서울(B)=============================================

		else if("검색".equals(location1)&&"자유공원".equals(local)||"자유공원".equals(search)||"wkdbrhddnjs".equals(search)||"자유 공원".equals(search)||"wkdb rhddnjs".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("C_2_inchen_freepark.jsp");
			dispatcher.forward(request, response);
			
		}
		else if("검색".equals(location1)&&"인천 대공원".equals(local)||"인천대공원".equals(search)||"dlscjseorhddnjs".equals(search)||"인천 대공원".equals(search)||"dlscjs eorhddnjs".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("C_3_inchen_park.jsp");
			dispatcher.forward(request, response);
			
		}
		else if("검색".equals(location1)&&"센티럴파크".equals(local)||"센티럴파크".equals(search)||"tosxlfjfvkzm".equals(search)||"센티럴 파크".equals(search)||"tpsxlfjf vkzm".equals(search)||"샌티럴 파크".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("C_1_incheon_centrollpark.jsp");
			dispatcher.forward(request, response);

		}
		//===============================인천(C)==============================================
		else if("검색".equals(location1)&&"팔달문".equals(local)||"팔달문".equals(search)||"vkfekfans".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("F_3_suwon_paldalmun.jsp");
			dispatcher.forward(request, response);
			
		}
		else if("검색".equals(location1)&&"동이포루".equals(local)||"동이포루".equals(search)||"ehddlvhfn".equals(search)||"동이 포루".equals(search)||"ehddl vhfn".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("F_2_suwon_dongiforu.jsp");
			dispatcher.forward(request, response);
			
		}
		else if("검색".equals(location1)&&"창룡문".equals(local)||"창룡문".equals(search)||"ckdfydans".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("F_1_suwon_changyongmun.jsp");
			dispatcher.forward(request, response);

		}
		//===============================수원(F)===================================================

		else if("검색".equals(location1)&&"강릉 경포 벚꽃축제".equals(local)||"강릉경포벚꽃축제".equals(search)||"rkdfmdrudvhqjwRhccnrwp".equals(search)||"강릉 경포 벚꽃축제".equals(search)||"rkdfmd rudvh qjwRhc cnrwp".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("D_2_kyengwon_kyengpobutggotchukje.jsp");
			dispatcher.forward(request, response);
			
		}
		else if("검색".equals(location1)&&"강릉 강문해변".equals(local)||"강릉강문해변".equals(search)||"rkdfmdrkdansgoqus".equals(search)||"강릉 강문해변".equals(search)||"rkdfmd rkdansgoqus".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("D_3_kyengwon_kangmunheabyen.jsp");
			dispatcher.forward(request, response);
			
		}
		else if("검색".equals(location1)&&"강릉경포대".equals(local)||"강릉경포대".equals(search)||"rkdfmdrudvheo".equals(search)||"강릉 경포대".equals(search)||"rkdfmd rudvheo".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("D_1_kyengwon_kyengpodae.jsp");
			dispatcher.forward(request, response);

		}
		//==============================강원(D)===========================================
		else if("검색".equals(location1)&&"동성로".equals(local)||"동성로".equals(search)||"ehdtjdfh".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("E_2_daegu_dongsungro.jsp");
			dispatcher.forward(request, response);
			
		}
		else if("검색".equals(location1)&&"비슬산 국립공원".equals(local)||"비슬산국립공원".equals(search)||"qltmftksrnrflqrhddnjs".equals(search)||"비슬산 국립공원".equals(search)||"qltmftks rnrflqrhddnjs".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("E_1_daegu_bislsangukribpark.jsp");
			dispatcher.forward(request, response);
			
		}
		else if("검색".equals(location1)&&"팔공산".equals(local)||"팔공산".equals(search)||"vkfrhdtks".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("E_3_daegu_palgongsanjayeonpark.jsp");
			dispatcher.forward(request, response);

		}
		//=============================대구(E)===================================
		else if("검색".equals(location1)&&"해운대".equals(local)||"해운대".equals(search)||"godnseo".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("G_1_busan_haeundae.jsp");
			dispatcher.forward(request, response);
			
		}
		else if("검색".equals(location1)&&"전포카페거리".equals(local)||"전포카페거리".equals(search)||"wjsvhzkvprjfl".equals(search)||"전포 카페거리".equals(search)||"wjsvh zkvprjfl".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("G_2_busan_jenpocafekeori.jsp");
			dispatcher.forward(request, response);
			
		}
		else if("검색".equals(location1)&&"부산 시민공원".equals(local)||"부산시민공원".equals(search)||"qntkstlalsrhddnjs".equals(search)||"부산 시민공원".equals(search)||"qntks tlalsrhddnjs".equals(search)){
			RequestDispatcher dispatcher = request.getRequestDispatcher("G_3_busan_siminpark.jsp");
			dispatcher.forward(request, response);

		}
		//=============================부산===============================
		
		else if("즐겨찾기".equals(location2)&& "도봉산".equals(local)) {
	    	  String link="B_3_seoul_DobongSan.jsp";
	    	  String pic ="./image/seoul/seoul_DobongSan.png";
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "청계천".equals(local)) {
	    	  String link="B_1_seoul_chungyechen.jsp";
	    	  String pic ="./image/seoul/seoul_chungyechen.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "남산공원".equals(local)) {
	    	  String link="B_2_seoul_Namsan.jsp";
	    	  String pic ="./image/seoul/seoul_NamsanPark.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "자유공원".equals(local)) {
	    	  String link="C_2_inchen_freepark.jsp";
	    	  String pic ="./image/incheon/incheon_freepark.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "인천 대공원".equals(local)) {
	    	  String link="C_3_inchen_park.jsp";
	    	  String pic ="./image/incheon/incheon_park.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "센티럴파크".equals(local)) {
	    	  String link="C_1_incheon_centrollpark.jsp";
	    	  String pic ="./image/incheon/incheon_centrollpark.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "팔달문".equals(local)) {
	    	  String link="F_3_suwon_paldalmun.jsp";
	    	  String pic ="./image/suwon/suwon_paldalmun.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "동이포루".equals(local)) {
	    	  String link="F_2_suwon_dongiforu.jsp";
	    	  String pic ="./image/suwon/suwon_dongiforu.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "창룡문".equals(local)) {
	    	  String link="F_1_suwon_changyongmun.jsp";
	    	  String pic ="./image/suwon/suwon_changyongmun.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "강릉 경포 벚꽃축제".equals(local)) {
	    	  String link="D_2_kyengwon_kyengpobutggotchukje.jsp";
	    	  String pic ="./image/kangwon/kangwon_kyengpobutggotchukje.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "강릉 강문해변".equals(local)) {
	    	  String link="D_3_kyengwon_kangmunheabyen.jsp";
	    	  String pic ="./image/kangwon/kangwon_kangmunhaebyen.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "강릉경포대".equals(local)) {
	    	  String link="D_1_kyengwon_kyengpodae.jsp";
	    	  String pic ="./image/kangwon/kangwon_kyengpodae.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "동성로".equals(local)) {
	    	  String link="E_2_daegu_dongsungro.jsp";
	    	  String pic ="./image/daegu/daegu_dongsungro.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "비슬산 국립공원".equals(local)) {
	    	  String link="E_1_daegu_bislsangukribpark.jsp";
	    	  String pic ="./image/daegu/daegu_bislsangukribpark.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "팔공산".equals(local)) {
	    	  String link="E_3_daegu_palgongsanjayeonpark.jsp";
	    	  String pic ="./image/daegu/daegu_bislsangukribpark.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "해운대".equals(local)) {
	    	  String link="G_1_busan_haeundae.jsp";
	    	  String pic ="./image/busan/busan_haeundae.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "전포카페거리".equals(local)) {
	    	  String link="G_2_busan_jenpocafekeori.jsp";
	    	  String pic ="./image/busan/busan_jenpocafekeori.png";
	    	  		
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& "부산 시민공원".equals(local)) {
	    	  String link="G_3_busan_siminpark.jsp";
	    	  String pic ="./image/busan/busan_siminPark.png";
	    	  
	    	  TelInfoDAO tidao = null;
			try {
				tidao = new TelInfoDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	
	    	  
	    	  boolean b1 = tidao.insert_local(local , link, pic,id_check);
	    	  	if(b1) {
	    	  	RequestDispatcher dispatcher = request.getRequestDispatcher("A_Map_Main.jsp");
				dispatcher.forward(request, response);
				}
	    	  	else
	    	  		System.out.println("실패");
	    	    
	      }
		else if("즐겨찾기".equals(location2)&& local == null) {
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			 
			out.println("<script type='text/javascript'>");
			out.println("alert('관광지를 선택해 주세요')");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			return;
			
		}
		else if("검색".equals(location1)&& local == null) {
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			 
			out.println("<script type='text/javascript'>");
			out.println("alert('관광지를 선택해 주세요')");
			out.println("history.back();");
			out.println("</script>");
			out.flush();
			return;
			
			

		

		}

		
		
		
		
	}

}



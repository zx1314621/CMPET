package cm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import petsshop.DBUtils;

/**
 * Servlet implementation class Addpet
 */
@WebServlet("/Addpet")
public class Addpet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addpet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
		  response.setCharacterEncoding("utf-8");
		  RequestDispatcher rd=null;
		  String type=request.getParameter("type");
		  String name=request.getParameter("name");
		  int age=Integer.valueOf(request.getParameter("age")).intValue();	
		  String sex=request.getParameter("sex");	
		  int num=Integer.valueOf(request.getParameter("num")).intValue();	
		  int price=Integer.valueOf(request.getParameter("price")).intValue();

		  String sql = "insert into pet(type,sex,price,name,num,age) values (?,?,?,?,?,?);";	  		 		 
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	       /* ResultSet rs = null;*/
	        try{
	            conn = DBUtils.getConnection();
	            pstmt = conn.prepareStatement(sql);	            
	            pstmt.setString(1,type);
	            pstmt.setString(2,sex);
	            pstmt.setInt(3,price);
	            pstmt.setString(4,name);
	            pstmt.setInt(5,num);
	            pstmt.setInt(6,age);
	            pstmt.execute();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }finally {
	            DBUtils.close(null,pstmt,conn);
	        }		  
	    	rd = request.getRequestDispatcher("/ManagerCenter.jsp");
	        rd.forward(request, response);

	}

}

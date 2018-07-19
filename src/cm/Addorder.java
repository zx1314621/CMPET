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
 * Servlet implementation class Addorder
 */
@WebServlet("/Addorder")
public class Addorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addorder() {
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
		  
		  String buyer_username=request.getParameter("buyer_username");
		  int buyer_num=Integer.valueOf(request.getParameter("buyer_num")).intValue();	
		  String buyer_address=request.getParameter("buyer_address");	
		  String state=request.getParameter("state");	
		  String pet_id=request.getParameter("pet_id");	
		  int pet_num=Integer.valueOf(request.getParameter("pet_num")).intValue();
		
		  String sql = "insert into order1(buyer_username,buyer_num,buyer_address,state,pet_id,pet_num) values (?,?,?,?,?,?);";	  		 		 
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	       /* ResultSet rs = null;*/
	        try{
	            conn = DBUtils.getConnection();
	            pstmt = conn.prepareStatement(sql);	            
	            pstmt.setString(1,buyer_username);
	            pstmt.setInt(2,buyer_num);
	            pstmt.setString(3,buyer_address);
	            pstmt.setString(4,state);
	            pstmt.setString(5,pet_id);
	            pstmt.setInt(6,pet_num);
	            pstmt.execute();
	           /* rs = pstmt.executeQuery();*/
	           /* if(rs.next())
	                return;*/
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }finally {
	            DBUtils.close(null,pstmt,conn);
	        }		  
	    	rd = request.getRequestDispatcher("/ManagerCenter.jsp");
	        rd.forward(request, response); 		
	}

}

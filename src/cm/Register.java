package cm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import petsshop.DBUtils;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		  
		  String username=request.getParameter("username");
		  String password=request.getParameter("password");
		  String name=request.getParameter("name");	 
		  String num=String.valueOf(request.getParameter("num"));
		  String address=request.getParameter("address");
		  
		  String sql = "insert into customer(username,password,name,num,address) values (?,?,?,?,?);";	  		 		 
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	       /* ResultSet rs = null;*/
	        try{
	            conn = DBUtils.getConnection();
	            pstmt = conn.prepareStatement(sql);	            
	            pstmt.setString(1,username);
	            pstmt.setString(2,password);
	            pstmt.setString(3,name);
	            pstmt.setString(4,num);
	            pstmt.setString(5,address);
	            pstmt.execute();
	           /* rs = pstmt.executeQuery();*/
	           /* if(rs.next())
	                return;*/
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }finally {
	            DBUtils.close(null,pstmt,conn);
	        }		  
	    	rd = request.getRequestDispatcher("/Registersuccess.jsp");
	        rd.forward(request, response);

	}
}

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
import javax.servlet.http.HttpSession;

import petsshop.Customer;
import petsshop.DBUtils;

/**
 * Servlet implementation class Userchangemessage
 */
@WebServlet("/Userchangemessage")
public class Userchangemessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userchangemessage() {
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
		  
		  
		  HttpSession session1 = request.getSession(true);
		  Customer customer1=new Customer();
		  customer1=(Customer)session1.getAttribute("customer");
		  String username=customer1.getUsername();
		  
		 /* String username=request.getParameter("username");*/
		  String password=request.getParameter("password");
		  String name=request.getParameter("name");	 
		  String num=String.valueOf(request.getParameter("num"));
		  String address=request.getParameter("address");		  
		  HttpSession session = request.getSession(true);
			Customer customer=new Customer();
			customer=(Customer)session.getAttribute("customer");
			int id=customer.getId();
		  String sql="update customer set username = ? ,  password = ? , name =?, num =?,address = ?  where id = ?;";
		  	/*	+ "update customer set password = ? where id = ?;"*/
		  		/*+ "update customer set name =? where id = ?;"*/
		  	/*	+ "update customer set num =?where id = ?;"
		  		+ "update customer set address = ? where id = ?;";*/		 
		  Connection conn = null;
	        PreparedStatement pstmt = null;
	        try{
	            conn = DBUtils.getConnection();
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1,username);

	            pstmt.setString(2,password);
	         
	            pstmt.setString(3,name);
	           
	            pstmt.setString(4,num);
	          
	            pstmt.setString(5,address);
	            pstmt.setInt(6,id);	            	            
	            pstmt.execute();
	           /* pstmt.close();
	    	    conn.close();*/
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }finally {
	            DBUtils.close(null,pstmt,conn);
	        }		  
	    	rd = request.getRequestDispatcher("/Uchangemessagesuccess.jsp");
	        rd.forward(request, response);

	}

}

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
 * Servlet implementation class Leavemessage
 */
@WebServlet("/Leavemessage")
public class Leavemessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Leavemessage() {
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
		  
		  String name=request.getParameter("name");
		  String buyer_num=String.valueOf(request.getParameter("num"));
		  String pet_name=request.getParameter("pet_name");	 
		  String content=request.getParameter("content");		  
          HttpSession session = request.getSession(true);
		  Customer customer=new Customer();
		  customer=(Customer)session.getAttribute("customer");
          String buyer_username=(String)customer.getUsername();			
		  if(buyer_username!=null)
		  {
             
			  String sql = "insert into message(name,buyer_username,buyer_num,content,pet_name) values (?,?,?,?,?);";	  		 		 
		        Connection conn = null;
		        PreparedStatement pstmt = null;
		        try{
		            conn = DBUtils.getConnection();
		            pstmt = conn.prepareStatement(sql);	            
		            pstmt.setString(1,name);
		            pstmt.setString(2,buyer_username);
		            pstmt.setString(3,buyer_num);
		            pstmt.setString(4,content);
		            pstmt.setString(5,pet_name);
		            pstmt.execute();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }finally {
		            DBUtils.close(null,pstmt,conn);
		        }		  
		    	rd = request.getRequestDispatcher("/contact.jsp");
		        rd.forward(request, response);
			  
	    }else {
	    	rd = request.getRequestDispatcher("/login.jsp");
	          rd.forward(request, response);
	    }		  		 
	}

}

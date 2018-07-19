package cm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Manager;


import petsshop.Customer;
import petsshop.DBUtils;



/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		  response.setCharacterEncoding("utf-8");
		  RequestDispatcher rd=null;
		  
		  String username=request.getParameter("username");
		  String password=request.getParameter("password");		 
		if(username.equals("1")&&password.equals("1")){
			HttpSession session = request.getSession(true);
			session.setAttribute("signflag", 1);
		    rd = request.getRequestDispatcher("/Loginsuccess.jsp");
		    rd.forward(request, response);
		    
			}		
		else{rd = request.getRequestDispatcher("/LoginWrong.jsp");
	    rd.forward(request, response);}		 		
	}*/
	 protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        RequestDispatcher rd=null;	        
	        String username = request.getParameter("username");
	        String password = request.getParameter("password"); 
	        Connection conn = null;
	        PreparedStatement stmt=null;
	        ResultSet rs = null;    
	        String sql = "select * from customer where username = ?";
	        try{
	        	conn = DBUtils.getConnection();
	    	    stmt = conn.prepareStatement(sql);
	    		stmt.setString(1, username);
	    		rs =stmt.executeQuery();	
	    		int id=0;
	    		String temp_username = null;
	    		String temp_password = null;
	    		String name=null;
	    		int num=0;
	    		String address=null;
	    		while(rs.next()){  			
	    			temp_username = rs.getString(1);
	    			temp_password = rs.getString(2);
	    			name=rs.getString(3);
	    			num=rs.getInt(4);
	    			address=rs.getString(5);
	    			id=rs.getInt(6);
	    				}
	    		stmt.close();
	    	    conn.close();
	    		if(temp_username.equals(username)&&temp_password.equals(password)){	
	    			Customer customer=new Customer();
	    			customer.setId(id);
	    			customer.setAddress(address);
	    			customer.setName(name);
	    			customer.setNum(num);
	    			customer.setPassword(temp_password);
	    			customer.setUsername(temp_username);
	    			HttpSession session = request.getSession(true);
	    			session.setAttribute("customer",customer);
	    		    rd = request.getRequestDispatcher("/Loginsuccess.jsp");
	    		    rd.forward(request, response);
	    			}		
	    		else{rd = request.getRequestDispatcher("/LoginWrong.jsp");
	    	    rd.forward(request, response);}
	    		  }catch(Exception e){
	    		   e.printStackTrace() ;
	    		  }
	    }
}

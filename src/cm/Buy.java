package cm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import petsshop.DBUtils;

/**
 * Servlet implementation class Buy
 */
@WebServlet("/Buy")
public class Buy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Buy() {
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
		  
		  
		 /* int i = Integer.valueOf(my_str).intValue();*/
		 int num=Integer.valueOf(request.getParameter("num")).intValue();
		  HttpSession session = request.getSession();
		  String username = (String)session.getAttribute("customer");
		  if(username!=null)
		  {			  
		      Connection conn = null;
		      PreparedStatement pstmt = null;
		      PreparedStatement stmt = null;
		      ResultSet rs = null;
			  String sql = "select* from customer where username=?;";
			  String sql2 = "insert into order(buyer_username,buyer_num,buyer_address,state,pet_id,pet_num) values (?,?,?,?,?,?);";	  		 		 
			  try{
		            conn = DBUtils.getConnection();
		            pstmt = conn.prepareStatement(sql);
		            pstmt.setString(1, username);
		    		rs =pstmt.executeQuery();	
		    		String buyer_username = null;
		    		int buyer_num = 0;
		    		String buyer_address = null;		    			    				    		
		    		while(rs.next()){
		    					 buyer_username = rs.getString(1);
		    					 buyer_num = rs.getInt(4);
		    					buyer_address=rs.getString(5);		   					
		    				}
		    	/*	pstmt.close();
		    	    conn.close();*/			  			  			  			  					       
		            stmt = conn.prepareStatement(sql2);	            
		            stmt.setString(1,buyer_username);
		            stmt.setInt(2,buyer_num);
		            stmt.setString(3,buyer_address);
		            stmt.setString(4,"已结算");
		            stmt.setInt(5,7);
		            stmt.setInt(6,num);
		            stmt.execute();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }finally {
		            DBUtils.close(null,pstmt,conn);
		        }		  			  			  
              rd = request.getRequestDispatcher("/Buyseccess.jsp");
	          rd.forward(request, response);	 
	    }else {
	    	rd = request.getRequestDispatcher("/login.jsp");
	          rd.forward(request, response);
	    }
	}

}

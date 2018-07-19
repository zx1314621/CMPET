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
 * Servlet implementation class Managerchangepassword
 */
@WebServlet("/Managerchangepassword")
public class Managerchangepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Managerchangepassword() {
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
	 protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        RequestDispatcher rd=null;	       
	        String password = request.getParameter("password");     
	        Connection conn = null;
	        PreparedStatement stmt=null;	
	        int user=1;
	        /*String username=String.valueOf(user);*/
	        String sql = "update manager set password=? where username=?;";
	        try{
	        	conn = DBUtils.getConnection();
	    	    stmt = conn.prepareStatement(sql);
	    		stmt.setString(1, password);
	    		/*stmt.setString(2, username);*/
	    		stmt.setInt(2, user);
	    		stmt.execute();
	    		stmt.close();
	    	    conn.close();
	    	    rd = request.getRequestDispatcher("/Mchangepasswordsuccess.jsp");
	    	    rd.forward(request, response);
	    		  }catch(SQLException e){
	    		   e.printStackTrace() ;
	    		  }
	    }
}

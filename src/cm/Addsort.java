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

import petsshop.DBUtils;

/**
 * Servlet implementation class Addsort
 */
@WebServlet("/Addsort")
public class Addsort extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addsort() {
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
		  
		  String sort=request.getParameter("sort");
		  

/*		  
		  
		  String sql = "insert into pet(type) values (?);";	  		 		 
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        try{
	            conn = DBUtils.getConnection();
	            pstmt = conn.prepareStatement(sql);	            
	            pstmt.setString(1,sort);
	            pstmt.execute();
	            rs = pstmt.executeQuery();
	            if(rs.next())
	                return;
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }finally {
	            DBUtils.close(null,pstmt,conn);
	        }*/		  
	    	rd = request.getRequestDispatcher("/Addtypesuccess.jsp");
	        rd.forward(request, response);

	}

}

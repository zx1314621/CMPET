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
 * Servlet implementation class Userorderdelet
 */
@WebServlet("/Userorderdelet")
public class Userorderdelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userorderdelet() {
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
		/*  int id=1;*/
		/* int num=Integer.valueOf(request.getParameter("num")).intValue();*/
		 int buy = Integer.valueOf(request.getParameter("buy")).intValue();						  
		      Connection conn = null;
		      PreparedStatement pstmt = null;		  
		      String sql = "delete  from order1  where id=?;";	
			  try{
		            conn = DBUtils.getConnection();
		            pstmt = conn.prepareStatement(sql);
		            pstmt.setInt(1, buy);
		            pstmt.execute();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }finally {
		            DBUtils.close(null,pstmt,conn);
		        }		  			  			  
          rd = request.getRequestDispatcher("/Deletesuccess.jsp");
	          rd.forward(request, response);	 
	  
	}

}

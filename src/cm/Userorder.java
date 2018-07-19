package cm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import petsshop.Customer;
import petsshop.DBUtils;
import petsshop.Order;

/**
 * Servlet implementation class Userorder
 */
@WebServlet("/Userorder")
public class Userorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userorder() {
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
		 response.setContentType("text/html;charset=UTF-8");
         RequestDispatcher rd=null;
		 List<Order>userorders=new ArrayList<Order>();
		 Connection conn = null;
		 PreparedStatement stmt=null;
		 ResultSet rs = null;	
		 Customer customer=new Customer();
		 HttpSession session = request.getSession(true);
		 customer=(Customer)session.getAttribute("customer");
		 String buyer_username=customer.getUsername();		 
		 String sql = "select* from order1 where buyer_username = ?";		 
	try{
		    conn = DBUtils.getConnection();
		    stmt = conn.prepareStatement(sql);
			stmt.setString(1, buyer_username);
			rs =stmt.executeQuery();
			int id=0;
		    int buyer_num = 0;
			String buyer_address=null;
			String state=null;
			int pet_id=0;
			int pet_num=0;
			while(rs.next()){				
			   Order order=new Order();	
			   id = rs.getInt(1);
			   buyer_username = rs.getString(2);
			   buyer_num = rs.getInt(3);
			   buyer_address=rs.getString(4);
			   state=rs.getString(5);
			   pet_id=rs.getInt(6);
			   pet_num=rs.getInt(7);	
			   order.setId(id);
			   order.setBuyer_address(buyer_address);
		       order.setBuyer_num(buyer_num);
			   order.setBuyer_username(buyer_username);
			   order.setPet_id(pet_id);
			   order.setPet_num(pet_num);
			   order.setState(state);
			
		       userorders.add(order);
				}
				stmt.close();
			    conn.close();			    	    
			HttpSession session21 = request.getSession(true);
			session21.setAttribute("userorders12",userorders);
			rd = request.getRequestDispatcher("/Userorder.jsp");
		    rd.forward(request, response);
					 }catch(SQLException e){
					 e.printStackTrace() ;
			  }			
	}

}

package com.p3;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/editurl")
public class EditServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String query = "update BOOKDATA set BOOKNAME=?,BOOKEDITION=?,BOOKPRICE=? where id=?";
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//get PrintWriter
		PrintWriter pw = res.getWriter();
		//set content type
		res.setContentType("text/html");
		//get the id of record
		int id = Integer.parseInt(req.getParameter("id"));
		//get the edit data we want to edit
		String bookName = req.getParameter("bookName");
		String bookEdition = req.getParameter("bookEdition");
		float bookPrice = Float.parseFloat(req.getParameter("bookPrice"));
		//LOAD jdbc driver
		try {
		Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException cnf) {
			cnf.printStackTrace();
		}
		//generate the connection
		try(Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb?useSSL=false","root","root");
				PreparedStatement ps = con.prepareStatement(query);){
			ps.setString(1, bookName);
			ps.setString(2, bookEdition);
			ps.setFloat(3, bookPrice);
			ps.setInt(4, id);
			int count = ps.executeUpdate();
			if(count==1) {
				pw.println("<script type=\"text/javascript\">");
				//pw.println("alert('Record is Updated Successfully');");
				pw.println("location='books.jsp';");
				pw.println("</script>");
			}else {
				pw.println("<h2>Record is not Edited Successfully</h2>");
			}
		}catch(SQLException se) {
			se.printStackTrace();
			pw.println("<h1>"+se.getMessage()+"</h2>");
		}catch(Exception e) {
			e.printStackTrace();
			pw.println("<h1>"+e.getMessage()+"</h2>");
		}

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req,res);
	}
}

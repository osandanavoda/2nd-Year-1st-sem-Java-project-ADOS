package com.seller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import java.util.List;
import com.seller.SellerDBUtil;
import javax.servlet.RequestDispatcher;



@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email =  request.getParameter("emailF");
		String password =  request.getParameter("passwordF");
		
		SellerDBUtil.validate(email, password);
		
		
		
		try {
			List<Seller> selDetails = SellerDBUtil.validate(email, password);
			request.setAttribute("selDetails", selDetails);
		}
		catch (Exception e){
			e.printStackTrace();
		
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("selleraccount.jsp");
		dis.forward(request, response);
		
	
	}

}


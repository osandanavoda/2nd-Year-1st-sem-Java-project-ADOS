package com.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateSellerServlet")
public class UpdateSellerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sellerID = request.getParameter("selid");
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("passw");
		String confirmPassword = request.getParameter("cpassw");
		String contactNumber = request.getParameter("contactno");
		
		boolean isTrue;
		
		isTrue = SellerDBUtil.updateseller(sellerID, firstName, lastName, email, password, confirmPassword, contactNumber);
		
		if(isTrue == true) {
			
			List<Seller> selDetails = SellerDBUtil.getSellerDetails(sellerID);
			request.setAttribute("selDetails", selDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("selleraccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Seller> selDetails = SellerDBUtil.getSellerDetails(sellerID);
			request.setAttribute("selDetails", selDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("selleraccount.jsp");
			dis.forward(request, response);
		}
	}

}

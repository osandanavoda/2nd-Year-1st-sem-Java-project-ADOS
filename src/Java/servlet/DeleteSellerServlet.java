package com.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteSellerServlet")
public class DeleteSellerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sellerID = request.getParameter("selid");
		boolean isTrue;
		
		isTrue = SellerDBUtil.deleteSeller(sellerID);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<Seller> selDetails = SellerDBUtil.getSellerDetails(sellerID);
			request.setAttribute("selDetails", selDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("selleraccount.jsp");
			dispatcher.forward(request, response);
			
		}
		
	}

}

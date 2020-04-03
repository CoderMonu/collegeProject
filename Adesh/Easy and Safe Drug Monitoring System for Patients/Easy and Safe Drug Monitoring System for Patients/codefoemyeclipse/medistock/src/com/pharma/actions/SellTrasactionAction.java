package com.pharma.actions;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pharma.bean.MedicalInfoTo;
import com.pharma.delegate.MedicalInfoMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.util.UtilConstants;

public class SellTrasactionAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String loginid = (String) session.getAttribute("user");
		int quantity = Integer.parseInt(request.getParameter("avail"));
		int orderedquantity = Integer.parseInt(request.getParameter("reqired"));
		int userid = Integer.parseInt(request.getParameter("userid"));
		int price = Integer.parseInt(request.getParameter("price"));
		System.out.println(userid);
		int productid = Integer.parseInt(request.getParameter("productid"));
		MedicalInfoTo mto = new MedicalInfoTo();
		boolean flag = false;
		String path = "";
		try {
			mto.setLoginid((loginid));
			mto.setAvail_quantity((quantity));
			mto.setOrderquantity(orderedquantity);
			mto.setProductid(productid);
			mto.setUserid(userid);
			mto.setPrice(Integer.parseInt(request.getParameter("price")));
			MedicalInfoMgrDelegate mmd = new MedicalInfoMgrDelegate();
			flag = mmd.addCustomerOrder(mto);
			if (flag) {
				path = "./jsps/selltrasactionAction.jsp?userid=" + userid
						+ "&reqorder=" + orderedquantity + "&price=" + price;
				request.setAttribute("status", "Money Transaction ");

			} else {
				path = UtilConstants._STATUS;
				request.setAttribute("status", "Failed ... Try again");
			}

		} catch (ConnectionException ce) {

			throw new ServletException("Connection Failed");

		} catch (Exception e) {
		}

		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}

}

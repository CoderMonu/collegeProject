package com.pharma.actions;

import java.io.IOException;

import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pharma.bean.MedicalInfoTo;
import com.pharma.bean.ProfileTo;
import com.pharma.delegate.MedicalInfoMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.util.UtilConstants;

public class MedicineOrderTransactionAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	@SuppressWarnings("unused")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String loginid = (String) session.getAttribute("user");
		String transaction = (request.getParameter("transaction"));
		int userid = Integer.parseInt(request.getParameter("userid"));

		int price = Integer.parseInt(request.getParameter("price"));
		System.out.println(userid + "" + transaction);

		MedicalInfoTo mto = new MedicalInfoTo();
		boolean flag = false;
		Vector<ProfileTo> rb = null;
		String path = "";
		try {
			System.out.println("......");
			mto.setLoginid((loginid));
			mto.setTransaction(transaction);

			mto.setUserid(userid);
			mto.setPrice(Integer.parseInt(request.getParameter("price")));
			MedicalInfoMgrDelegate mmd = new MedicalInfoMgrDelegate();
			rb = mmd.addCustomerTransaction(mto);

			if (!rb.isEmpty()) {

				System.out.println("... reere");
				request.setAttribute("trans", rb);
				path = UtilConstants._DISPLAY_ADDRESS;

			} else if (rb.isEmpty()) {
				System.out.println("... ex");
				request.setAttribute("status", "Transaction fail Try later");
				path = UtilConstants._STATUS;

			}

		} catch (ConnectionException ce) {

			request.setAttribute("status", " Try later");
			path = UtilConstants._STATUS;

		} catch (Exception e) {
			request.setAttribute("status", " No Data Try later");
			path = UtilConstants._STATUS;
		}

		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}

}

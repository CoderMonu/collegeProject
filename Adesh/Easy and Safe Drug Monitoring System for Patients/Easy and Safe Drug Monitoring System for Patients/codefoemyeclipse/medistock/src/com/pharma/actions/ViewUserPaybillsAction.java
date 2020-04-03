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
import com.pharma.delegate.MedicalInfoMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.util.UtilConstants;

public class ViewUserPaybillsAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "";
		@SuppressWarnings("unused")
		HttpSession session = request.getSession();
		Vector<MedicalInfoTo> opv = null;

		String medicinename = request.getParameter("medicinename");
		String loginid = request.getParameter("loginid");
		try {
			opv = new MedicalInfoMgrDelegate().viewuserpayments(loginid);
			if (!opv.isEmpty()) {
				request.setAttribute("medicalinfo", opv);
				request.setAttribute("loginid", loginid);
				request.setAttribute("medicinename", medicinename);
				path = UtilConstants._VIEW_USER;
			} else if (opv.isEmpty()) {
				request.setAttribute("status", UtilConstants._NO_USER_PAYMENTS);
				request.setAttribute("loginid", loginid);
				request.setAttribute("medicinename", medicinename);
				path = UtilConstants._VIEW_ALL_USER_PAYMENTS;
				throw new NullPointerException(
						"No Medicines bills are Available belongs to this category");
			} else {
				request.setAttribute("status", UtilConstants._NO_USER_PAYMENTS);
				request.setAttribute("loginid", loginid);
				request.setAttribute("medicinename", medicinename);
				path = UtilConstants._VIEW_ALL_USER_PAYMENTS;
			}
		} catch (ConnectionException e) {
			request.setAttribute("status",
					UtilConstants._VIEW_ALL_USER_PAYMENTS);
			path = UtilConstants._VIEW_ALL_USER_PAYMENTS;
		}

		catch (Exception e) {
			request.setAttribute("status", UtilConstants._INVALIED_ENTRY);
			path = UtilConstants._VIEW_ALL_USER_PAYMENTS;
		} finally {
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
	}

}

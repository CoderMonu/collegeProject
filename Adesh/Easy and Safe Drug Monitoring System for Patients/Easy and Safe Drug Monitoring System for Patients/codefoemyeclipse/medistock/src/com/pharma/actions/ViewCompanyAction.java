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

public class ViewCompanyAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "";
		@SuppressWarnings("unused")
		HttpSession session = request.getSession();
		String companyname = request.getParameter("companyname");
		Vector<MedicalInfoTo> opv = null;
		try {
			opv = new MedicalInfoMgrDelegate().viewCompanies(companyname);
			if (!opv.isEmpty()) {
				request.setAttribute("companyinfo", opv);
				request.setAttribute("companyname", companyname);
				path = UtilConstants._VIEW_COMPANY;
			} else if (opv.isEmpty()) {
				request.setAttribute("status", UtilConstants._NO_COMPANY);
				request.setAttribute("companyname", companyname);
				path = UtilConstants._VIEW_ALL__COMPANY;
				throw new NullPointerException("No Companies are Available");
			} else {
				request.setAttribute("status", UtilConstants._NO_COMPANY);
				request.setAttribute("companyname", companyname);
				path = UtilConstants._VIEW_ALL__COMPANY;
			}
		}
		
		catch (ConnectionException e) {
			request.setAttribute("status",e.getMessage());
			path=UtilConstants._VIEW_ALL__COMPANY;
		}
		catch (Exception e) {
			request.setAttribute("status", UtilConstants._INVALIED_ENTRY);
			path = UtilConstants._VIEW_ALL__COMPANY;
		}finally {
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
		}
	}

}

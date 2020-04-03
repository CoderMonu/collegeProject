package com.pharma.actions;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pharma.bean.MedicalInfoTo;
import com.pharma.delegate.MedicalInfoMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.exceptions.DataNotFoundException;
import com.pharma.util.UtilConstants;

public class ViewUpdateCategoryAction extends HttpServlet {

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

	@SuppressWarnings("deprecation")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = "";
		Vector<MedicalInfoTo> category = null;

		try {
			int categoryid = Integer.parseInt(request
					.getParameter("categoryid"));
			try {
				path = request.getRealPath("/images");
				System.out.println(path);
				category = new MedicalInfoMgrDelegate().viewCategoryupdate(
						categoryid, path);
			} catch (DataNotFoundException e) {
				e.printStackTrace();
			} catch (ConnectionException e) {

				e.printStackTrace();
			}
			System.out
					.println("in View Category Update Action class ..........."
							+ category);
			if (!category.isEmpty()) {
				request.setAttribute("categoryinfo", category);
				request.setAttribute("status",
						UtilConstants._VIEW_UPDATE__CATEGORY);
				path = UtilConstants._UPDATE__CATEGORY;
			} else {
				request.setAttribute("status",
						UtilConstants._VIEW_UPDATE__CATEGORY);
				path = UtilConstants._UPDATE__CATEGORY;
			}
		} catch (NullPointerException e) {
			request.setAttribute("status", UtilConstants._INVALIED_ENTRY);
			path = UtilConstants._UPDATE__CATEGORY;
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}

}

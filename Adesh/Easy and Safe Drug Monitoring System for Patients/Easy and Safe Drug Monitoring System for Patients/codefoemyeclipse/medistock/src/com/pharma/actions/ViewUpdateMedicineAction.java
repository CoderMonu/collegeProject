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



public class ViewUpdateMedicineAction extends HttpServlet {

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

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = "";
		Vector<MedicalInfoTo> medicine = null;

		try {
			int pid = Integer.parseInt(request.getParameter("productid"));
			try {

				medicine = new MedicalInfoMgrDelegate().viewMedicineupdate(pid);
			} catch (DataNotFoundException e) {
				e.printStackTrace();
			} catch (ConnectionException e) {
				
				e.printStackTrace();
			}
			System.out
					.println("in View Medicines Update Action class ..........."
							+ medicine);
			if (!medicine.isEmpty()) {
				request.setAttribute("medicalinfo", medicine);
				request.setAttribute("status",
						UtilConstants._VIEW_UPDATE__MEDICINES);
				path = UtilConstants._UPDATE__MEDICINES;
			} else {
				request.setAttribute("status",
						UtilConstants._VIEW_UPDATE__MEDICINES);
				path = UtilConstants._UPDATE__MEDICINES;
			}
		} catch (NullPointerException e) {
			request.setAttribute("status", UtilConstants._INVALIED_ENTRY);
			path = UtilConstants._UPDATE__MEDICINES;
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}

}

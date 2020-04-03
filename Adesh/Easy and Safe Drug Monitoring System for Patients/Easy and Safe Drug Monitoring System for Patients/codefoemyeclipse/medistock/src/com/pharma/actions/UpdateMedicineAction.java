package com.pharma.actions;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pharma.bean.MedicalInfoTo;
import com.pharma.delegate.MedicalInfoMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.exceptions.LoginException;
import com.pharma.formbeans.MedicalInfoFormbean;
import com.pharma.util.UtilConstants;
import com.sun.org.apache.commons.beanutils.BeanUtils;

public class UpdateMedicineAction extends HttpServlet {

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

	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MedicalInfoFormbean mt = new MedicalInfoFormbean();
		Map map = request.getParameterMap();
		try {
			BeanUtils.populate(mt, map);
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {
			e1.printStackTrace();

		}
		String path = "";
		boolean flag = false;

		try {
			MedicalInfoTo mto = new MedicalInfoTo(mt);
			@SuppressWarnings("unused")
			int pid = Integer.parseInt(request.getParameter("productid"));
			try {

				flag = new MedicalInfoMgrDelegate().updateMedicines(mto);
			} catch (LoginException e) {
				e.printStackTrace();
			} catch (ConnectionException e) {
				e.printStackTrace();
			}
			System.out.println("in Action class ..........." + flag);

			if (flag) {
				request.setAttribute("status",
						UtilConstants._UPDATE__MEDICINE_SUCCESS);
				path = UtilConstants._STATUS;
			} else {
				request.setAttribute("status",
						UtilConstants._UPDATE__MEDICINE_FAIL);
				path = UtilConstants._STATUS;
			}

		} catch (Exception e) {
			request.setAttribute("status", UtilConstants._INVALIED_ENTRY);
			path = UtilConstants._STATUS;
			e.printStackTrace();
		}
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}
}

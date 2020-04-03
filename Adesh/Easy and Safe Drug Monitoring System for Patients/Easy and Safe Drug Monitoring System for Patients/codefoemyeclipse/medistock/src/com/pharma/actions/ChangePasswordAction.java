package com.pharma.actions;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pharma.bean.ProfileTo;
import com.pharma.delegate.ProfileMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.util.UtilConstants;
import com.sun.org.apache.commons.beanutils.BeanUtils;

/**
 * The ChangePasswordAction Class implements the changing password 
 * providing security for the particular user
 */
public class ChangePasswordAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = null;

		boolean flag = false;
		String path = "";

		ProfileTo pro = new ProfileTo();

		Map map = request.getParameterMap();
		try {
			BeanUtils.populate(pro, map);
		} catch (IllegalAccessException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();

		}

		try {
			try {

				flag = new ProfileMgrDelegate().changePassword(pro);

			} catch (ConnectionException ce) {
				throw new ServletException("server busy please try again");
			}

			if (flag) {

				request.setAttribute("status", UtilConstants._PASSWORD_SUCCESS);

				path = UtilConstants._USER_PASSWORD_CHANGE;

			} else {
				request.setAttribute("status", UtilConstants._PASSWORD_FAILED);

				path = UtilConstants._USER_PASSWORD_CHANGE;
			}

		} catch (Exception e) {
			e.printStackTrace();

			request.setAttribute("status",
					"Invalid Entries or Enter old Password properly");

			path = UtilConstants._USER_PASSWORD_CHANGE;
		}

		rd = request.getRequestDispatcher(path);

		rd.forward(request, response);
	}
}

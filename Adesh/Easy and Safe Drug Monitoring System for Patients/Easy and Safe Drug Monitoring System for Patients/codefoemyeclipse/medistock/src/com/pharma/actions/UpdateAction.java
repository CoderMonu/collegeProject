package com.pharma.actions;

import java.io.IOException;

import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pharma.delegate.ProfileMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.profileformbean;
import com.pharma.util.UtilConstants;
import com.sun.org.apache.commons.beanutils.BeanUtils;

/**
 * This UserUpdateAction Class represents the modify the user 
 * details if necessary when he/she view his/her own profile
 */
public class UpdateAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * The doGet method of the servlet. <br>
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
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = null;
		boolean flag = false;
		String path = "";
		profileformbean prof = new profileformbean();
		Map map = request.getParameterMap();
		try {
			BeanUtils.populate(prof, map);
		
			flag = new ProfileMgrDelegate().updateProfile(prof);
			if (flag) {
				path = UtilConstants._STATUS;
				request.setAttribute("status", UtilConstants._UPDATE_SUCCESS);
			} else {
				path = UtilConstants._STATUS;
				request.setAttribute("status", UtilConstants._UPDATE_FAIL);
			}
		} 
		catch (ConnectionException e) {
			request.setAttribute("status",e.getMessage());
			path=UtilConstants._STATUS;
		}
		catch (Exception e) {
			e.printStackTrace();
			path = UtilConstants._STATUS;
			request.setAttribute("status", UtilConstants._UPDATE_FAIL);
		}finally {
		rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}}

	public void init() throws ServletException {
	}
}

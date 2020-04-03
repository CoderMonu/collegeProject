package com.pharma.actions;

import java.io.IOException;
import java.util.Iterator;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pharma.bean.ProfileTo;
import com.pharma.delegate.ProfileMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.exceptions.LoginException;
import com.pharma.util.UtilConstants;

/**
 * LoginAction Servlet Class for to login user into his account. This class
 * Helps to login.
 * 
 */
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String target = "";
		HttpSession session = request.getSession();
		ProfileTo pro = new ProfileTo();
		Vector<ProfileTo> vpro = new Vector<ProfileTo>();
		String username = request.getParameter(UtilConstants._USERNAME);
		pro.setUserName(username);
		String password = request.getParameter(UtilConstants._PASSWORD);
		pro.setPassword(password);
		try {
			vpro = new ProfileMgrDelegate().loginCheck(pro);
			Iterator it = vpro.listIterator();
			while (it.hasNext()) {
				pro = (ProfileTo) it.next();
				System.out.println("in LoginAction Role is.........."
						+ pro.getLoginType());
			}
			if (pro.getLoginType().equalsIgnoreCase(UtilConstants._ADMIN)) {
				request.setAttribute("status", "Welcome " + pro.getLoginid());
				System.out.println(pro.getFirstName());
				target = UtilConstants._ADMIN_HOME;
				session.setAttribute(UtilConstants._LOGIN_USER, pro
						.getLoginid());
				session.setAttribute(UtilConstants._USERID, pro
						.getUserid());
				session.setAttribute(UtilConstants._ROLE, pro.getLoginType());
				System.out.println("LoginAction :" + pro.getLoginType());
			} else if (pro.getLoginType().equalsIgnoreCase(
					UtilConstants._DEALER)) {
				session.setAttribute(UtilConstants._LOGIN_USER, pro
						.getLoginid());
				request.setAttribute("status", "Welcome " + pro.getLoginid());
				target = UtilConstants._MANAGER_PAGE;
				session.setAttribute(UtilConstants._USERID, pro
						.getUserid());
				session.setAttribute(UtilConstants._ROLE, pro.getLoginType());
				System.out.println("LoginAction :" + pro.getLoginType());
			} else if (pro.getLoginType().equalsIgnoreCase(
					UtilConstants._CUSTOMER)) {
				session.setAttribute(UtilConstants._LOGIN_USER, pro
						.getLoginid());
				request.setAttribute("status", "Welcome " + pro.getLoginid());
				target = UtilConstants._CUSTOMER_HOME;
				session.setAttribute(UtilConstants._USERID, pro
						.getUserid());
				session.setAttribute(UtilConstants._ROLE, pro.getLoginType());
				System.out.println("LoginAction :" + pro.getLoginType());
			}else if (pro.getLoginType().equalsIgnoreCase(
					UtilConstants._EMPLOYEE)) {
				session.setAttribute(UtilConstants._LOGIN_USER, pro
						.getLoginid());
				request.setAttribute("status", "Welcome " + pro.getLoginid());
				target = UtilConstants._EMPLOYEE_HOME;
				session.setAttribute(UtilConstants._USERID, pro
						.getUserid());
				session.setAttribute(UtilConstants._ROLE, pro.getLoginType());
				System.out.println("LoginAction :" + pro.getLoginType());
			}else {
				request.setAttribute("status", UtilConstants._INVALID_USER);
				target = UtilConstants._LOGIN_FAILED_PAGE;
			}
		} catch (ConnectionException e) {
			request.setAttribute("status", e.getMessage());
			target = UtilConstants._LOGIN_FAILED_PAGE;
		} catch (LoginException e) {
			request.setAttribute("status", e.getMessage());
			target = UtilConstants._LOGIN_FAILED_PAGE;
		}
		RequestDispatcher rd = request.getRequestDispatcher(target);
		rd.forward(request, response);
	}
}

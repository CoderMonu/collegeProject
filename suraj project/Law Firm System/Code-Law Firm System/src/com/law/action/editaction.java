package com.law.action;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.law.Dao.LoginDao;
import com.nit.bean.RegisterBean;
import com.sun.org.apache.commons.beanutils.BeanUtils;

public class editaction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		RequestDispatcher rd = null;

		boolean flag = false;
		String path = "";
		String username = (String) session.getAttribute("user");
		System.out.println("username is " + username);
			
		
		RegisterBean rto=new RegisterBean();
		rto.setUsername(username);
		System.out.println("username is---->"+username);
		Map map = request.getParameterMap();
		try {
			BeanUtils.populate(rto, map);

		} catch (IllegalAccessException e1) {

			e1.printStackTrace();
		} catch (InvocationTargetException e1) {

			e1.printStackTrace();

		}

		Vector vcb = null;
		try {
			vcb = new LoginDao().viewUsers(rto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (!vcb.isEmpty()) {
			request.setAttribute("vcb", vcb);
			request.setAttribute("status", "USERS INFORMATION");
			path = "";
		} else {
			request.setAttribute("status", "NO DATA");
			path = "";
		}
		rd = request.getRequestDispatcher(path);
		rd.forward(request, response);

	}

}

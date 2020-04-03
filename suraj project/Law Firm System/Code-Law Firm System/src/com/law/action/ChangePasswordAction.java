package com.law.action;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.law.Dao.LoginDao;
import com.nit.bean.ChangePasswordTo;
import com.nit.bean.RegisterBean;
import com.sun.org.apache.commons.beanutils.BeanUtils;

public class ChangePasswordAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		RequestDispatcher rd = null;

		boolean flag = false;
		String path = "";

		ChangePasswordTo cp = new ChangePasswordTo();
		RegisterBean rb=new RegisterBean();
		String fname=request.getParameter("username");
		rb.setFname(fname);
		String lname=request.getParameter("oldpassword");
		rb.setLname(lname);
		String ltype=request.getParameter("newpassword");
		rb.setLogintype(ltype);
		try {

			flag = new LoginDao().changePassword(fname,lname,ltype);

			if (flag) {

				//session.setAttribute("status1", "PASSWORD CHANGE SUCCESSFULLY");
				String s1 = (String) session.getAttribute("userid");
				

					path = "./Changepassword.jsp";
					request.setAttribute("status1", "PASSWORD CHANGE SUCCESSFULLY");

			} else {

				path = "./Changepassword.jsp";

				request.setAttribute("status1", "ChangePassword is Failed");
			}
		} catch (Exception e) {
			request.setAttribute("status1", e.getMessage());
			path = "./Changepassword.jsp";

		} finally {
			rd = request.getRequestDispatcher(path);
			rd.forward(request, response);

		}
	}

}

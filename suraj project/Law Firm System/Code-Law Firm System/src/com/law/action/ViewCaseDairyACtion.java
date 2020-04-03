package com.law.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.CaseDairyDao;
import com.nit.bean.CaseDairyBean;


public class ViewCaseDairyACtion extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = "";
		String path1 = "";
		Vector<CaseDairyBean> packdetails = null;
		path1 = request.getRealPath("/userimages");

		try {

			packdetails = new CaseDairyDao().viewCasePr(path1);
			if (!packdetails.isEmpty()) {
				request.setAttribute("status", "User Detail");
				request.setAttribute("packdetails", packdetails);
				path = "./ViewCaseDairy.jsp";

			} else {

				request.setAttribute("status", "Record Log Information");
				path = "./ViewCaseDairy.jsp";

			}

		} catch (Exception e) {

			e.printStackTrace();

			request.setAttribute("status", "Record Log Information");
			path = "./ViewCaseDairy.jsp";

		}
		RequestDispatcher rd = request.getRequestDispatcher(path);

		rd.forward(request, response);
	}
}

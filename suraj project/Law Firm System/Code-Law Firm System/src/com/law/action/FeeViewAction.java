package com.law.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.FeeDao;
import com.nit.bean.FeeBean;


public class FeeViewAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = "";
		String path1 = "";
		Vector<FeeBean> packdetails = null;
		path1 = request.getRealPath("/userimages");

		try {

			packdetails = new FeeDao().viewFee(path1);
			if (!packdetails.isEmpty()) {
				request.setAttribute("status", "User Detail");
				request.setAttribute("packdetails", packdetails);
				path = "./ViewAM.jsp";

			} else {

				request.setAttribute("status", "Record Log Information");
				path = "./ViewAM.jsp";

			}

		} catch (Exception e) {

			e.printStackTrace();

			request.setAttribute("status", "Record Log Information");
			path = "./ViewAM.jsp";

		}
		RequestDispatcher rd = request.getRequestDispatcher(path);

		rd.forward(request, response);
	}
}

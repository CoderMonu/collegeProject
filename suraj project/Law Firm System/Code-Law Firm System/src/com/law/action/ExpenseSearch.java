package com.law.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.ExpenseDao;
import com.nit.bean.CaseBean;
import com.nit.bean.CaseExpenseBean;

public class ExpenseSearch extends HttpServlet {

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
		CaseExpenseBean b=new CaseExpenseBean();
		Vector<CaseExpenseBean> packdetails = null;
		path1 = request.getRealPath("/userimages");
		String ctype=request.getParameter("fn");
		b.setFileNo(ctype);
		
		try {

			packdetails = new ExpenseDao().searchCaseDetails(ctype);
			if (!packdetails.isEmpty()) {
				request.setAttribute("status", "User Information");
				request.setAttribute("packdetails", packdetails);
				path = "./ExpenseSearchResult.jsp";

			} else {

				request.setAttribute("status", "Record Log Information");
				path = "./ExpenseSearchResult.jsp";

			}

		} catch (Exception e) {

			e.printStackTrace();

			request.setAttribute("status", "Record Log Information");
			path = "./ExpenseSearchResult.jsp";

		}
		RequestDispatcher rd = request.getRequestDispatcher(path);

		rd.forward(request, response);
	}
}

package com.law.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.CaseDao;
import com.nit.bean.CaseBean;

public class SearchAction extends HttpServlet {

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
		CaseBean b=new CaseBean();
		Vector<CaseBean> packdetails = null;
		path1 = request.getRealPath("/userimages");
		String ctype=request.getParameter("Ctype1");
		b.setCaseType(ctype);
		String fno=request.getParameter("fn");
		b.setFileNo(fno);
		String casename=request.getParameter("casename12");
		b.setCaseName(casename);
		String clientna=request.getParameter("clientname");
		b.setClientName(clientna);
		String courtN=request.getParameter("courttname");
		b.setCortName(courtN);
		String cseno=request.getParameter("caseno");
		b.setCaseNo(cseno);
		String advo=request.getParameter("adv");
		b.setSrAdvocate(advo);

		try {

			packdetails = new CaseDao().searchCaseDetails(ctype,fno,casename,clientna,courtN,cseno,advo);
			if (!packdetails.isEmpty()) {
				request.setAttribute("status", "User Information");
				request.setAttribute("packdetails", packdetails);
				path = "./SearchResult.jsp";

			} else {

				request.setAttribute("status", "Record Log Information");
				path = "./SearchResult.jsp";

			}

		} catch (Exception e) {

			e.printStackTrace();

			request.setAttribute("status", "Record Log Information");
			path = "./SearchResult.jsp";

		}
		RequestDispatcher rd = request.getRequestDispatcher(path);

		rd.forward(request, response);
	}
}

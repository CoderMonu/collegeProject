package com.pharma.actions;

import java.io.IOException;

import java.util.Iterator;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pharma.bean.MedicalInfoTo;
import com.pharma.delegate.MedicalInfoMgrDelegate;
import com.pharma.util.UtilConstants;


public class ViewCompaniesDetailsAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
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
		
		String path="";
		int companyid;
		MedicalInfoTo mto = null;
		String companyname = "";
		int cid=0;
        
		Vector<MedicalInfoTo> vpro = null;
		try {
			 companyid=Integer.parseInt(request.getParameter("companyid"));
			vpro = new MedicalInfoMgrDelegate().viewCompaniesDetails(companyid);
			if (vpro !=null) {
				Iterator it = vpro.listIterator();
				if (it.hasNext()) {
					mto = (MedicalInfoTo) it.next();
					companyname = mto.getCompanyname();
					cid=mto.getCompanyid();
				}
				System.out.println("ccccccccccccc"+companyname);System.out.println(cid);
				request.setAttribute("companyname", companyname);
				request.setAttribute("cid", cid);
				request.setAttribute("productinfo", vpro);
				request.setAttribute("companyid", companyid);
				path = UtilConstants._VIEW_COMPANIES_DETAIL;
			}  else {
				path = UtilConstants._NO_COMPANY_DETAILS;
			}
		} catch (Exception e) {
			request.setAttribute("status", UtilConstants._NO_COMPANY_DETAILS);
			path = UtilConstants._NO_COMPANY_DETAILS;
		}
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
		
	}

}
package com.law.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.CaseProceesDao;
import com.nit.bean.CaseBean;

public class SearchMoneyPM extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		CaseBean bs = new CaseBean();
		String path=null;
		Vector<CaseBean> packdetails = null;
		String firnname= req.getParameter("fn");
		bs.setCaseNo(firnname);
				try {
System.out.println("===================>"+firnname);
					packdetails = new CaseProceesDao().searchCaseDetails(firnname);
					if (!packdetails.isEmpty()) {
						req.setAttribute("status", "User Information");
						req.setAttribute("packdetails", packdetails);
						path = "./PM.jsp";

					} else {

						req.setAttribute("status", "Record Log Information");
						path = "./PM.jsp";

					}

				} catch (Exception e) {

					e.printStackTrace();

					req.setAttribute("status", "Record Log Information");
					path = "./PM.jsp";

				}
				RequestDispatcher rd = req.getRequestDispatcher(path);

				
					try {
						rd.forward(req, res);
					} catch (ServletException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				
			}
		}

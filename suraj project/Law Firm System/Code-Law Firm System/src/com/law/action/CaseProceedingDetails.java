package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.CaseProceesDao;
import com.nit.bean.CaseProcedingBean;

public class CaseProceedingDetails extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		CaseProcedingBean bs = new CaseProcedingBean();
		
 	   
		String firnname= req.getParameter("caseno");
		bs.setCaseno(firnname);
		String sname = req.getParameter("casename");
		bs.setCasename(sname);
		String add= req.getParameter("client");
		bs.setClient(add);
		String country=req.getParameter("opposite");
		bs.setOpposiation(country);
		String phone=req.getParameter("dob");
		bs.setHearingdate(phone);
		String state=req.getParameter("hs");
		bs.setHearingstage(state);
		String mobile=req.getParameter("hds");
		bs.setHearingdetails(mobile);
				try {
			boolean flag = new CaseProceesDao().caseProceeding(bs);
			if (flag = true) {

				
					String path="./addcasepecoeding.jsp";
				
					
					req.setAttribute("status", "CaseProcedding Details add successfull");
			}
		} catch (Exception e) {

		}
		
		RequestDispatcher rd=req.getRequestDispatcher("./CaseSearch.jsp");
		try {
			rd.forward(req,res);
		} catch (ServletException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

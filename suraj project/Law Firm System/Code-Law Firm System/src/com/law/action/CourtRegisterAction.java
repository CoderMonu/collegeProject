package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.CourtDao;
import com.nit.bean.CourtBean;

public class CourtRegisterAction extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		CourtBean bs = new CourtBean();
		
 	   
		String ccode= req.getParameter("ccode");
		bs.setCourtcode(ccode);
		String cname = req.getParameter("cname");
		bs.setCourtname(cname);
		String court= req.getParameter("court");
		bs.setCourttype(court);
		String cside=req.getParameter("Cside");
		bs.setCourtside(cside);
		String add=req.getParameter("address");
		bs.setCourtaddress(add);
		String country=req.getParameter("country");
		bs.setCountry(country);
		String state=req.getParameter("state");
		bs.setState(state);
		String city=req.getParameter("city");
		bs.setCity(city);
		try {
			boolean flag = new CourtDao().newCourtMaster(bs);
			if (flag = true) {

				
					String path="./CourtMaster.jsp";
				
					
					req.setAttribute("status", "CourtMaster Details add successfull");
			}
		} catch (Exception e) {

		}
		
		RequestDispatcher rd=req.getRequestDispatcher("./CourtMaster.jsp");
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

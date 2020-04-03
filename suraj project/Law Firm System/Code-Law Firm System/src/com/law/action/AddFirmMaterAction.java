package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.FirmDao;
import com.nit.bean.FirmMasterBean;

public class AddFirmMaterAction extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		FirmMasterBean bs = new FirmMasterBean();
		
 	   
		String firnname= req.getParameter("fname");
		bs.setFirmName(firnname);
		String sname = req.getParameter("sname");
		bs.setShortName(sname);
		String add= req.getParameter("address");
		bs.setStreetAddress(add);
		String country=req.getParameter("Ctype1");
		bs.setCountry(country);
		String phone=req.getParameter("phone");
		bs.setPhone(phone);
		String state=req.getParameter("Stype");
		bs.setState(state);
		String mobile=req.getParameter("mobile");
		bs.setMobileNo(mobile);
		String city=req.getParameter("Ctype");
		bs.setCity(city);
		String email=req.getParameter("email");
		bs.setEmail(email);
		String fax=req.getParameter("fax");
		bs.setFax(fax);
		String cperson=req.getParameter("cperson");
		bs.setContactPerson(cperson);
		String cpho=req.getParameter("cphone");
		bs.setCPhone(cpho);
		try {
			boolean flag = new FirmDao().newfirmMaster(bs);
			if (flag = true) {

				
					String path="./Busdetails.jsp";
				
					
					req.setAttribute("status", "FirmMaster Details add successfull");
			}
		} catch (Exception e) {

		}
		
		RequestDispatcher rd=req.getRequestDispatcher("./Busdetails.jsp");
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

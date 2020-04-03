package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.AdocateDao;
import com.nit.bean.AdvocateBean;

public class AdvocateRegister extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		AdvocateBean bs = new AdvocateBean();
		
 	   
		String aname= req.getParameter("aname");
		bs.setAdvocateName(aname);
		String quali = req.getParameter("qualification");
		bs.setQualification(quali);
		String adlevel= req.getParameter("level");
		bs.setAdvocateLevel(adlevel);
		String add=req.getParameter("address");
		bs.setStreetAddress(add);
		String country=req.getParameter("country");
		bs.setCountry(country);
		String phone=req.getParameter("phone");
		bs.setPhone(phone);
		String state=req.getParameter("state");
		bs.setState(state);
		String mobile=req.getParameter("mobile");
		bs.setMobile(mobile);
		String city=req.getParameter("city");
		bs.setCity(city);
		String email=req.getParameter("email");
		bs.setEmail(email);
		String pin=req.getParameter("pin");
		bs.setPinCode(pin);
		
		try {
			boolean flag = new AdocateDao().newAdvocatetMaster(bs);
			if (flag = true) {

				System.out.println("Advocate Detail add Successfully");
					String path="./AdvocateMaster.jsp";
				
					
					req.setAttribute("status", "Advocate Details add successfull");
			}
		} catch (Exception e) {

		}
		
		RequestDispatcher rd=req.getRequestDispatcher("./AdvocateMaster.jsp");
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

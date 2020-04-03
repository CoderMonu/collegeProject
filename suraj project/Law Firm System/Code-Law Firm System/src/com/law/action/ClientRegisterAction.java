package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.ClientDao;
import com.nit.bean.ClientBean;

public class ClientRegisterAction extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		ClientBean bs = new ClientBean();
		
 	   
		String cname= req.getParameter("cname");
		bs.setClientName(cname);
		String cadd = req.getParameter("address");
		bs.setClientAddress(cadd);
		String country= req.getParameter("Country");
		bs.setCountry(country);
		String phone=req.getParameter("phone");
		bs.setPhone(phone);
		String state=req.getParameter("State");
		bs.setState(state);
		String mobile=req.getParameter("mobile");
		bs.setMobileNo(mobile);
		String city=req.getParameter("City");
		bs.setCity(city);
		String email=req.getParameter("email");
		bs.setEmail1(email);
		String email2=req.getParameter("email2");
		bs.setEmail2(email2);
		String rperson=req.getParameter("rperson");
		bs.setRperson(rperson);
		String cphone=req.getParameter("cphone");
		bs.setRphone(cphone);
		String raddress=req.getParameter("raddress");
		bs.setAddress(raddress);
		try {
			boolean flag = new ClientDao().newClienttMaster(bs);
			if (flag = true) {

				req.setAttribute("status", "ClientMaster Details add successfull");
					String path="./ClientMaster.jsp";
				
					
					
			}
		} catch (Exception e) {

		}
		
		RequestDispatcher rd=req.getRequestDispatcher("./ClientMaster.jsp");
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

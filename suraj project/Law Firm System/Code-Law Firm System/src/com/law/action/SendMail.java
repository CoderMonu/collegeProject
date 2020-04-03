package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.FeeDao;
import com.nit.bean.MailBean;

public class SendMail extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		MailBean bs = new MailBean();
		
 	   
		String receipt= req.getParameter("receipt");
		bs.setReceipt(receipt);
		String subject = req.getParameter("senddate");
		bs.setSubject(subject);
		String mess= req.getParameter("maildesc");
		bs.setMessage(mess);
		String afile = req.getParameter("ufile");
		bs.setAttached(afile);
		System.out.println("============>"+mess);
		try {
			boolean flag = new FeeDao().mail(bs);
			if (flag = true) {

				System.out.println("Mail Send Successfully");
					String path="./Mailbody.jsp";
				
					
					req.setAttribute("status", "Mail Send  Successfull");
			}
		} catch (Exception e) {

		}
		
		RequestDispatcher rd=req.getRequestDispatcher("./Mailbody.jsp");
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

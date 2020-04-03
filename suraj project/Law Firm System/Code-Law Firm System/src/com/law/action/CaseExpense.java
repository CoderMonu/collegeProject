package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.ExpenseDao;
import com.nit.bean.CaseExpenseBean;

public class CaseExpense extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		CaseExpenseBean bs = new CaseExpenseBean();
		
 	   
		String cno= req.getParameter("caseno");
		bs.setExpenseNo(cno);
		String cname = req.getParameter("date");
		bs.setDate(cname);
		String client= req.getParameter("fileno");
		bs.setFileNo(client);
		String oppp=req.getParameter("client");
		bs.setClient(oppp);
		String nhd=req.getParameter("cano");
		bs.setCaseNo(nhd);
		String ad=req.getParameter("address");
		bs.setAddress(ad);
		String at=req.getParameter("casename");
		bs.setCaseName(at);
		String an=req.getParameter("ad");
		bs.setExpenseHead(an);
		String ap=req.getParameter("level");
		bs.setType(ap);
		String cd= req.getParameter("name1");
		bs.setAmount(cd);
		String ct= req.getParameter("words");
		bs.setAmountinwords(ct);
				try {
			boolean flag = new ExpenseDao().caseDairy(bs);
			if (flag = true) {

				
					String path="./CaseExpense.jsp";
				
					
					req.setAttribute("status", "Case Expense  Details add successfully");
			}
		} catch (Exception e) {

		}
		
		RequestDispatcher rd=req.getRequestDispatcher("./SearchExpense.jsp");
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

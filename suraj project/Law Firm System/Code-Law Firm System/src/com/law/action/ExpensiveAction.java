package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.ExpensiveDao;
import com.law.Dao.FeeDao;
import com.nit.bean.ExpensiveBean;
import com.nit.bean.FeeBean;

public class ExpensiveAction extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		ExpensiveBean bs = new ExpensiveBean();
		
 	   
		String fcode= req.getParameter("fcode");
		bs.setFeeCode(fcode);
		String fname = req.getParameter("fname");
		bs.setFeeName(fname);
		try {
			boolean flag = new ExpensiveDao().fee(bs);
			if (flag = true) {

				System.out.println("Expensive Detail add Successfully");
					String path="./ExpensiveMaster.jsp";
				
					
					req.setAttribute("status", "Expensive Details add successfull");
			}
		} catch (Exception e) {

		}
		
		RequestDispatcher rd=req.getRequestDispatcher("./ExpensiveMaster.jsp");
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

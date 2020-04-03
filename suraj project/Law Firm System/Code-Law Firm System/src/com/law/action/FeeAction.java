package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.FeeDao;
import com.nit.bean.FeeBean;

public class FeeAction extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		FeeBean bs = new FeeBean();
		
 	   
		String fcode= req.getParameter("fcode");
		bs.setFeeCode(fcode);
		String fname = req.getParameter("fname");
		bs.setFeeName(fname);
		try {
			boolean flag = new FeeDao().fee(bs);
			if (flag = true) {

				System.out.println("CourtMaster Detail add Successfully");
					String path="./FeeMaster.jsp";
				
					
					req.setAttribute("status", "CourtMaster Details add successfull");
			}
		} catch (Exception e) {

		}
		
		RequestDispatcher rd=req.getRequestDispatcher("./FeeMaster.jsp");
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

package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.CaseDairyDao;
import com.nit.bean.CaseDairyBean;

public class CaseDiary extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		
		CaseDairyBean bs = new CaseDairyBean();
		RequestDispatcher rd = null;
		String path = "";
		String cno= req.getParameter("caseno1");
		bs.setCaseNo(cno);
		String cname = req.getParameter("casename1");
		bs.setCaseName(cname);
		String client= req.getParameter("client1");
		bs.setClient(client);
		String oppp=req.getParameter("opposite1");
		bs.setOpposie(oppp);
		String nhd=req.getParameter("nhd");
		bs.setNextHeringDa(nhd);
		String ad=req.getParameter("ad");
		bs.setAppointmentDate(ad);
		String at=req.getParameter("at");
		bs.setAppointmentTime(at);
		String an=req.getParameter("name1");
		bs.setName1(an);
		String ap=req.getParameter("purpose1");
		bs.setPurpose1(ap);
		String cd= req.getParameter("cd");
		bs.setCallDate(cd);
		String ct= req.getParameter("ct");
		bs.setCallTime(ct);
		String cn= req.getParameter("name2");
		bs.setName2(cn);
		String cp=req.getParameter("purpose2");
		bs.setPurpose2(cp);
				try {
			boolean flag = new CaseDairyDao().caseDairy(bs);
			System.out.println("flag=="+flag);
			if (flag) {
				
				req.setAttribute("status","CaseDairy Details Added successfully");
				req.setAttribute("packdetails", flag);
				path = "CaseDiary.jsp";
			} else {
				req.setAttribute("status","CaseDairy Details Added successfully");
				path = "CaseDiary.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			path = "CaseDiary.jsp";
			req.setAttribute("status", e.getMessage());
		}
		rd = req.getRequestDispatcher("./CaseSearch.jsp");
		try {
			rd.forward(req, res);
		} catch (ServletException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		
		
		
		}}

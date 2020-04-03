package com.law.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.law.Dao.CaseDao;
import com.nit.bean.CaseBean;

public class CaseDetailAction extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		HttpSession session=req.getSession();

    	
		Vector<CaseBean> ps = new Vector<CaseBean>();
		
		RequestDispatcher rd = null;
		String path = "";
		//Vector<ProfileTo> vprofile = new Vector<ProfileTo>();
		boolean flag=false;
		CaseBean rb = new CaseBean();
		String fname=req.getParameter("Ctype1");
		rb.setCaseType(fname);
		String lname=req.getParameter("fn");
		rb.setFileNo(lname);
		String ltype=req.getParameter("cname");
		rb.setCaseName(ltype);
		String uname=req.getParameter("clientname");
		rb.setClientName(uname);
		String pass=req.getParameter("address");
		rb.setAddress1(pass);
		String cpass=req.getParameter("ph");
		rb.setPhone1(cpass);
		String cname=req.getParameter("cn1");
		rb.setCortName(cname);
		String dbf=req.getParameter("db");
		rb.setDateOfBrief(dbf);
		String ltype1=req.getParameter("df");
		rb.setDateOfFilling(ltype1);
		String cno=req.getParameter("cno");
		rb.setCaseNo(cno);
		String sr=req.getParameter("srname");
		rb.setSrAdvocate(sr);
		String jr=req.getParameter("jrname");
		rb.setJrAdvocate(jr);
		String op=req.getParameter("opn");
		rb.setOppositePartyName(op);
		String oa=req.getParameter("opnaddress");
		rb.setAddress2(oa);
		String op2=req.getParameter("fax");
		rb.setPhone2(op2);
		String oa1=req.getParameter("operson");
		rb.setOppositeAdvacteName(oa1);
		String ooa=req.getParameter("oaddress");
		rb.setAddress3(ooa);
		String opp=req.getParameter("ophone");
		rb.setPhone3(opp);
		String note=req.getParameter("note");
		rb.setNote(note);
		String fil=req.getParameter("ufile");
		rb.setAttachFile(fil);					
		try {
	    					flag=new CaseDao().newCase(rb);
	    					System.out.println("flag=="+flag);
	    					if (flag) {
	    						
	    						req.setAttribute("status","Case Details Added successfully");
	    						req.setAttribute("packdetails", flag);
	    						path = "CaseDetails.jsp";
	    					} else {
	    						req.setAttribute("status","Sorry Plz Enter Case Details again");
	    						path = "CaseDetails.jsp";
	    					}
	    				} catch (Exception e) {
	    					e.printStackTrace();
	    					path = "CaseDetails.jsp";
	    					req.setAttribute("status", e.getMessage());
	    				}
	    				rd = req.getRequestDispatcher(path);
	    				try {
							rd.forward(req, res);
						} catch (ServletException e) {
							
							e.printStackTrace();
						} catch (IOException e) {
							
							e.printStackTrace();
						}
	    				
	    				
	    				
	    				
	    				}
}

package com.law.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.CaseDao;
import com.nit.bean.MoneyBean;

public class PMoneyAction extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		doPost(request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		RequestDispatcher rd = null;
		String path = "";
		//Vector<ProfileTo> vprofile = new Vector<ProfileTo>();
		boolean flag=false;
		
		MoneyBean rto =new MoneyBean();
		/*Map map = request.getParameterMap();
		try {
			BeanUtils.populate(rto, map);
		} catch (IllegalAccessException e1) {
			
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {
			
			e1.printStackTrace();
		}
		try {
			
			
			flag=new CaseDao().AddMoney(rto);
		*/	
		

    	
		Vector<MoneyBean> ps = new Vector<MoneyBean>();
	
		MoneyBean rb = new MoneyBean();
		String fname=request.getParameter("recno");
		rb.setReceiptNo(fname);
		String lname=request.getParameter("rdate");
		rb.setDate(lname);
		String ltype=request.getParameter("fileno");
		rb.setFileno(ltype);
		String uname=request.getParameter("client");
		rb.setClient(uname);
		String pass=request.getParameter("cano");
		rb.setCaseno(pass);
		String cpass=request.getParameter("address");
		rb.setAddress(cpass);
		String cs=request.getParameter("Casename");
		rb.setCasename(uname);
		String fm=request.getParameter("AmountType");
		rb.setPaymenttype(fm);
		String cps=request.getParameter("cdno");
		rb.setDraftNo(cps);
		String cps1=request.getParameter("ramount");
		rb.setReceiptAmount(cps1);
		
		String fna=request.getParameter("note");
		rb.setDraftDate(fna);
		String year=request.getParameter("cddate");
		rb.setBankname(year);
		String cc=request.getParameter("words");
		rb.setDraftAmount(cc);
		String payy1=request.getParameter("bankname");
		rb.setNote(payy1);
		String payy2=request.getParameter("cdamount");
		rb.setAwords(payy2);
		
						try {
	    					flag=new CaseDao().AddMoney(rb);
	    					System.out.println("flag=="+flag);

		
		System.out.println("flag=="+flag);
			if (flag) {
				
				
				path = "PM.jsp";
				request.setAttribute("status","Money Details Added Successfully");
			} else {
				request.setAttribute("status",
						"Money Added Successfully");
				path="PM.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			path = "PM.jsp";
			request.setAttribute("status", e.getMessage());
		}
		rd = request.getRequestDispatcher("./SearchMoney.jsp");
		rd.forward(request, response);
		
		
		
		
		
		
		
		}

}

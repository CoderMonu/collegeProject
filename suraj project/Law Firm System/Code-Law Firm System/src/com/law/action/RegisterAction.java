package com.law.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.law.Dao.LoginDao;
import com.nit.bean.RegisterBean;
import com.nit.bean.UserBean;

public class RegisterAction extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		HttpSession session=req.getSession();

    	
		Vector<UserBean> ps = new Vector<UserBean>();
		
		RequestDispatcher rd = null;
		String path = "";
		//Vector<ProfileTo> vprofile = new Vector<ProfileTo>();
		boolean flag=false;
		RegisterBean rb = new RegisterBean();
		String fname=req.getParameter("fname");
		rb.setFname(fname);
		String lname=req.getParameter("ltname");
		rb.setLname(lname);
		String ltype=req.getParameter("USertype");
		rb.setLogintype(ltype);
		String uname=req.getParameter("Uname");
		rb.setUsername(uname);
		String pass=req.getParameter("password");
		rb.setPassword(pass);
		String cpass=req.getParameter("cpass");
		rb.setCpass(cpass);
						try {
	    					flag=new LoginDao().newuser(rb);
	    					System.out.println("flag=="+flag);
	    					if (flag) {
	    						
	    						req.setAttribute("status","Registration successfully ");
	    						path = "Registerform.jsp";
	    					} else {
	    						req.setAttribute("status","Registration successfully");
	    						path = "Registerform.jsp";
	    					}
	    				} catch (Exception e) {
	    					e.printStackTrace();
	    					path = "Registerform.jsp";
	    					req.setAttribute("status", e.getMessage());
	    				}
	    				rd = req.getRequestDispatcher(path);
	    				try {
							rd.forward(req, res);
						} catch (ServletException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
	    				
	    				
	    				
	    				
	    				}
}

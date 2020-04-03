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

public class PasswordAction extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		
		HttpSession session=req.getSession();

    	
		Vector<RegisterBean> ps = new Vector<RegisterBean>();
		
		RequestDispatcher rd = null;
		String path = "";
		//Vector<ProfileTo> vprofile = new Vector<ProfileTo>();
		boolean flag=false;
		RegisterBean rb = new RegisterBean();
		String fname=req.getParameter("username");
		rb.setFname(fname);
		System.out.println("fname+++"+fname);
		String opass=req.getParameter("oldpassword");
		rb.setPassword(opass);
		System.out.println("lname+++"+opass);
		String npass=req.getParameter("newpassword");
		rb.setNewpassword(npass);
		System.out.println("ltype+++"+npass);
		
		String cpass=req.getParameter("cpassword");
		rb.setCpass(cpass);
		
	System.out.println("uname-00000   "+cpass);
		
						try {
	    					flag=new LoginDao().newpass(rb);


	    					if (flag) {

	    						//session.setAttribute("status1", "PASSWORD CHANGE SUCCESSFULLY");
	    						String s1 = (String) session.getAttribute("userid");
	    						

	    							path = "./password.jsp";
	    						

	    					} else {

	    						path = "./password.jsp";

	    						req.setAttribute("status1", "ChangePassword is Failed");
	    					}
	    				} catch (Exception e) {
	    					req.setAttribute("status1", e.getMessage());
	    					path = "./password.jsp";

	    				} finally {
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
	    				}

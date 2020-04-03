

package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.law.Dao.LoginDao;
import com.nit.bean.RegisterBean;


public class LoginAction extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) {
	
     String target="";
     String role=" ";
     HttpSession session=req.getSession();
		
	
		
//	session.setMaxInactiveInterval(1*60);
     RegisterBean pss=new RegisterBean();
     String uname=req.getParameter("username");
     pss.setUsername(uname);
     String pass=req.getParameter("password");
     pss.setPassword(pass);
  try{
	
  
    	 
    	 role=LoginDao.loginCheck(pss);
    	 
    	 System.out.println("in LoginAction Role is.........."+role);
session.setAttribute("user", uname);

System.out.println("unameuname------->"+uname);
session.setAttribute("UserName", role);
			if (role.equalsIgnoreCase("admin"))
			{
				
				req.setAttribute("status","Welcome "+ uname);
				
				target = "./Adminhome.jsp";
				System.out.println("hello ");
				session.setAttribute("username", uname);
				session.setAttribute("LoginType", role);
				session.setAttribute("password",pass);
				
			}
			else if (role.equalsIgnoreCase("NormalUser"))
			{
				
             req.setAttribute("status","Welcome " + uname );
				 target = "./Userhome.jsp";
				session.setAttribute("username", uname );
				session.setAttribute("LoginType", role);
				session.setAttribute("password",pass);
				
			}
			
			else
			{
				req.setAttribute("status", "Invalid username&password");
				target = "./LoginForm.jsp";
			}
    	 
  }catch(Exception e)
  {
	  
	  e.printStackTrace();
  }
     
  
	
	
	RequestDispatcher rd = req.getRequestDispatcher(target);
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

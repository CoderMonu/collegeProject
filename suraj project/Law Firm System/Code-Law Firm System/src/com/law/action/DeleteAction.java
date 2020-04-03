package com.law.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.LoginDao;

public class DeleteAction extends HttpServlet {

	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path="";
		boolean flag=false;
		RequestDispatcher rd=null;
		try{
		int userid=Integer.parseInt(request.getParameter("userid"));
			 flag=new LoginDao().deleteUser(userid);
			 if(flag){
				 request.setAttribute("status", "User Information deteletd  successfully");
				 path="./DisplayUser.jsp";
			 }else{
				 request.setAttribute("status", "User Info deletion Failed");
				 path="./DisplayUser.jsp";
			 }
		}catch (Exception e) {
			 request.setAttribute("status", "Category Detetion Failed plz try again");
			 path="./DisplayUser.jsp";
		}
		rd=request.getRequestDispatcher(path);
		rd.forward(request, response);
	}
}

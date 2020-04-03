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
public class ViewSample extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*int did=Integer.parseInt(request.getParameter("did"));
		System.out.println("-------------"+did);*/
		
		
		
		
		RequestDispatcher rd = null;

		boolean flag = true;
		String path = "";
		 HttpSession session=request.getSession();

		 RegisterBean tr1=new RegisterBean();
       
		String  ch[] =(request.getParameterValues("did"));   
        session.setAttribute("ch", ch);
		for(int i=0;i<ch.length;i++){
			  int c=Integer.parseInt(ch[i]);
			 System.out.println(" check box value is "+c);
			
			  }
		 
		 /* System.out.println(" selected did is in session setting"+tr1.getDid());
		  session.setAttribute("documentid", (tr1.getDid()));*/
		try {

			Vector<RegisterBean> tsb = new LoginDao().baseFormCoding(tr1);

			if (tsb != null) {
				session.setAttribute("tsb", tsb);
				//path = "BaseForm.jsp";
				path = "Registerform.jsp";
			       request.setAttribute("status1", "HERE IS YOUR DATA ");	
			
			
			
			
			}
			else {
				path = "Registerform.jsp";
				//path = "BaseForm.jsp";
				//path = "./OriginalCitationStringAction";

				request.setAttribute("status1", "No Data Found");
			}
		} catch (Exception e) {
			request.setAttribute("status1", e.getMessage());
			
			//path = "BaseForm.jsp";
			path = "BaseForm1.jsp";
			e.printStackTrace();
		}

		rd = request.getRequestDispatcher(path);
		rd.forward(request, response);

	}

}


		
		
		
		
		
		
		
	
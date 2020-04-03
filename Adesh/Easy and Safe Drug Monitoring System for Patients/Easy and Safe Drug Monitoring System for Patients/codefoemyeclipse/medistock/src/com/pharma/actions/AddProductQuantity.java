package com.pharma.actions;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pharma.bean.MedicalInfoTo;
import com.pharma.delegate.MedicalInfoMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.util.UtilConstants;

public class AddProductQuantity extends HttpServlet {

private static final long serialVersionUID = 1L;

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = null;
		HttpSession session = request.getSession();
		String loginid=(String)session.getAttribute("user");
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		int price=Integer.parseInt(request.getParameter("price"));
		int productid=Integer.parseInt(request.getParameter("medicinename"));
		MedicalInfoTo mto=new MedicalInfoTo();
		boolean flag=false;
        String path="";
        try {
        	mto.setLoginid((loginid));
        	mto.setQuantity(((quantity)));
        	mto.setProductid(productid);
        	mto.setPrice(price);
        	
			 MedicalInfoMgrDelegate mmd=new MedicalInfoMgrDelegate(); 
			 flag =mmd.addProductQuantity(mto);
			 if (flag) {
					path = UtilConstants._STATUS;
					request.setAttribute("status",
							UtilConstants._PRODUCT_COST_ADDED_SUCCESS);
				} else {
					path = UtilConstants._STATUS;
					request.setAttribute("status",
							UtilConstants._PRODUCT_COST_ADDED_FAIL);
				}
			    
        }

		catch (ConnectionException e) {
			request.setAttribute("status", e.getMessage());
			path = UtilConstants._STATUS;
		} catch (Exception e) {
			e.printStackTrace();
			path = UtilConstants._STATUS;
			request.setAttribute("status", UtilConstants._INVALID_ENTRIES);
		} finally {
			rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
		}
	}

}

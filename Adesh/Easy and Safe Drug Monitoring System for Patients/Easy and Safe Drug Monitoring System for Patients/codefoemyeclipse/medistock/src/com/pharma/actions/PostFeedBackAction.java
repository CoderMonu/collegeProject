package com.pharma.actions;

import java.io.IOException;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pharma.bean.FeedbackTo;
import com.pharma.delegate.MedicalInfoMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.FeedbackFormbean;
import com.pharma.util.UtilConstants;
import com.sun.org.apache.commons.beanutils.BeanUtils;

public class PostFeedBackAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		FeedbackFormbean fb = new FeedbackFormbean();
		HttpSession hs = request.getSession();
		hs.setAttribute("feedbackbean", fb);
		Map map = request.getParameterMap();
		try {
			BeanUtils.populate(fb, map);
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {
			e1.printStackTrace();
		}
		String path = "";
		boolean flag = false;
		try {
			FeedbackTo fto = new FeedbackTo(fb);
			
				flag = new MedicalInfoMgrDelegate().insertFeedBack(fto);
		
			if (flag == true) {
				request.setAttribute("status", UtilConstants._INSERT_FEEDBACK);
				path = UtilConstants._FEEDBACK_HOME;
			} else {
				request.setAttribute("status", UtilConstants._FEEDBACK_FAILED);
				path = UtilConstants._FEEDBACK_HOME;
			}
		} 
		catch (ConnectionException e) {
			request.setAttribute("status", e.getMessage());
			path=UtilConstants._FEEDBACK_HOME;
		}
		catch (Exception e) {
			request.setAttribute("status", UtilConstants._INVALIED_ENTRY);
			path = UtilConstants._FEEDBACK_HOME;
			e.printStackTrace();
		}finally {
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}
}}

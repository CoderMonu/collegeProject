package com.pharma.actions;

import java.io.IOException;

import java.util.Map;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pharma.bean.FeedbackTo;
import com.pharma.delegate.MedicalInfoMgrDelegate;
import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.FeedbackFormbean;
import com.pharma.util.UtilConstants;
import com.sun.org.apache.commons.beanutils.BeanUtils;

/**
 * The ViewFeedBackAction Class represents the administrator can view 
 * the feedbacks which are posted by students and faculty from the system
 */
public class ViewFeedBackAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */

	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		FeedbackFormbean fb = new FeedbackFormbean();
		Map map = request.getParameterMap();
		
		String path = "";
		try {
			BeanUtils.populate(fb, map);
		
		
		Vector<FeedbackTo> allFeedbacks = null;
		
			int fid = Integer.parseInt(request.getParameter("fid"));
				allFeedbacks = new MedicalInfoMgrDelegate().getAllFeedBack(fid);
			System.out.println("in Action class vcb Feedback..........."
					+ allFeedbacks);
			if (!allFeedbacks.isEmpty()) {
				request.setAttribute("FeedBack", allFeedbacks);
				request.setAttribute("status",
						UtilConstants._VIEW_ALL_FEEDBACKS);
				path = UtilConstants._DISPLAY_FEEDBACK_INFO;
			} else {
				request.setAttribute("status",
						UtilConstants._ALL_FEEDBACKS_FAILED);
				path = UtilConstants._DISPLAY_FEEDBACK_INFO;
			}
		} catch (ConnectionException e) {
			request.setAttribute("status", e.getMessage());
			path = UtilConstants._DISPLAY_FEEDBACK_INFO;
			e.printStackTrace();
		}catch (Exception e) {
		}
		
		finally {
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}
}}
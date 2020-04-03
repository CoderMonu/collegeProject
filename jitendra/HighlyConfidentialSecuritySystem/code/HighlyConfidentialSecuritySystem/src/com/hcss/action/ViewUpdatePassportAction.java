/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.hcss.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.hcss.bean.MailsTO;
import com.hcss.bean.PassportTO;
import com.hcss.delegate.UserPersonalDelegate;
import com.hcss.utill.UtilConstants;

/**
 * MyEclipse Struts Creation date: 09-05-2012
 * 
 * XDoclet definition:
 * 
 * @struts.action validate="true"
 * @struts.action-forward name="failure" path="/Status.jsp"
 * @struts.action-forward name="status" path="/UpdatePassportDetails.jsp"
 */
public class ViewUpdatePassportAction extends Action {
	/*
	 * Generated Methods
	 */

	/**
	 * Method execute
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int passportid = Integer.parseInt(request.getParameter("passportid"));
		PassportTO passportTO = null;
		try {
			passportTO = new UserPersonalDelegate()
					.viewUpdatePassPortDetails(passportid);
			if (passportTO != null) {
				request.setAttribute("passportTO", passportTO);
				request.setAttribute("status",
						UtilConstants._VIEW_PASSPORT_DETAILS);
				return mapping.findForward("success");
			} else {
				request.setAttribute("status",
						UtilConstants._VIEW_PASSPORT_DETAILS_FAIL);
				return mapping.findForward("failure");
			}
		} catch (Exception ce) {
			request.setAttribute("status", ce.getMessage());
			return mapping.findForward("failure");
		}
	}
}
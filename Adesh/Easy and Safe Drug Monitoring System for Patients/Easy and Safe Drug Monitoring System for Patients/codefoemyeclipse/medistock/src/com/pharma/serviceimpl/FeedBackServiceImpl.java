package com.pharma.serviceimpl;

import java.util.Vector;

import com.pharma.bean.FeedbackTo;
import com.pharma.daoi.FeedbackDAOI;
import com.pharma.daoimpl.FeedBackDAOImpl;
import com.pharma.exceptions.ConnectionException;
import com.pharma.servicei.FeedBackServiceI;

//FeedBackServiceImpl Class
public class FeedBackServiceImpl implements FeedBackServiceI {
	FeedbackDAOI fdao = new FeedBackDAOImpl();
	boolean flag = false;
	Vector<FeedbackTo> vfto = null;

	public boolean cancelFeedBack(int fid) throws 
			ConnectionException {
		return fdao.cancelFeedBack(fid);
		
	}

	public Vector<FeedbackTo> getAllFeedBack(int fid1)
			throws ConnectionException {
		return fdao.getAllFeedBack(fid1);
		
	}

	public Vector<FeedbackTo> getFeedBack() throws ConnectionException {
		return fdao.getFeedBack();
	}
		

	public boolean insertFeedBack(FeedbackTo fb) throws 
			ConnectionException {
	return fdao.insertFeedBack(fb);
		
	}
}

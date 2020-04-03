package com.pharma.daoi;

import java.util.Vector;

import com.pharma.bean.FeedbackTo;
import com.pharma.exceptions.ConnectionException;



public interface FeedbackDAOI {
	public boolean insertFeedBack(FeedbackTo fb)throws ConnectionException;

	public Vector<FeedbackTo> getFeedBack()throws ConnectionException;

	public Vector<FeedbackTo> getAllFeedBack(int fid1)throws ConnectionException;

	public boolean cancelFeedBack(int fid)throws ConnectionException;

}

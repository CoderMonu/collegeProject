package com.pharma.bean;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import com.pharma.formbeans.FeedbackFormbean;
import com.sun.org.apache.commons.beanutils.BeanUtils;

public class FeedbackTo {
	private String feedback;
	private String name;
	private String address;
	private String email;
	private String title;
	private String phone;
	private int fid;
	public FeedbackTo() {

	}

	@SuppressWarnings("unchecked")
	public FeedbackTo(FeedbackFormbean fb) {
		try {
			Map map = BeanUtils.describe(fb);
			BeanUtils.populate(this, map);
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {
			e1.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}
}

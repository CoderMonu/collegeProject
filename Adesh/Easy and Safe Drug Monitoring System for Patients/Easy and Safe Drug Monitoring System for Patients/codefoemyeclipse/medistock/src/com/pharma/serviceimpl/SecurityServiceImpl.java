package com.pharma.serviceimpl;

import java.util.Vector;

import com.pharma.bean.ProfileTo;
import com.pharma.daoi.SecurityDAOI;
import com.pharma.daoimpl.SecurityDAOImpl;
import com.pharma.exceptions.ConnectionException;
import com.pharma.exceptions.LoginException;
import com.pharma.formbeans.profileformbean;
import com.pharma.servicei.SecurityServiceI;

//SecurityServiceImpl Class
public class SecurityServiceImpl implements SecurityServiceI {
	Vector<ProfileTo> vpro = null;
	SecurityDAOI sdaoi = new SecurityDAOImpl();
	boolean flag = false;
	String data = "";

	public boolean changePassword(ProfileTo profileformbean)
			throws ConnectionException {

		 flag=sdaoi.changePassword(profileformbean);
		 if(flag==false){
			 
			 throw new ConnectionException();
				 
		 }
		 
		 
		 return flag;
	
	 }

	public boolean changeQuestion(profileformbean regbean)
			throws ConnectionException {
		return sdaoi.changeQuestion(regbean);
	}

	public String checkUser(String userName) throws ConnectionException {

		return sdaoi.checkUser(userName);
	}

	public Vector<ProfileTo> loginCheck(ProfileTo pro) throws LoginException,
			ConnectionException {

		vpro = sdaoi.loginCheck(pro);
		if (vpro.size() < 1)
			throw new LoginException("Invalid username and password");

		return vpro;

	}

	public void loginaudit(String loginid) throws ConnectionException {
		sdaoi.loginaudit(loginid);
	}

	public String recoverPasswordByQuestion(profileformbean regbean)
			throws ConnectionException {
		return sdaoi.recoverPasswordByQuestion(regbean);
	}

	public boolean checkAvailability(String userid) throws ConnectionException {
		return sdaoi.checkAvailability(userid);
	}

	public boolean changePassword(profileformbean pro)
			throws ConnectionException {
		// TODO Auto-generated method stub
		return false;
	}
}

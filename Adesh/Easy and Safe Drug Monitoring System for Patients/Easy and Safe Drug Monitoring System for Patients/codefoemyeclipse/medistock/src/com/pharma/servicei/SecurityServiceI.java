package com.pharma.servicei;

import java.util.Vector;

import com.pharma.bean.ProfileTo;
import com.pharma.exceptions.ConnectionException;
import com.pharma.exceptions.LoginException;
import com.pharma.formbeans.profileformbean;

//SecurityService Interface
public interface SecurityServiceI {
	
	public void loginaudit(String loginid) throws ConnectionException;

	public boolean changePassword(ProfileTo pro) throws ConnectionException;

	public boolean changeQuestion(profileformbean regbean)
			throws  ConnectionException;

	public String recoverPasswordByQuestion(profileformbean regbean)
			throws ConnectionException;
	public String checkUser(String userName) throws ConnectionException;

	public boolean checkAvailability(String userid)throws ConnectionException;
	
	public Vector<ProfileTo> loginCheck(ProfileTo pro) throws LoginException,
	ConnectionException;

		
	

}

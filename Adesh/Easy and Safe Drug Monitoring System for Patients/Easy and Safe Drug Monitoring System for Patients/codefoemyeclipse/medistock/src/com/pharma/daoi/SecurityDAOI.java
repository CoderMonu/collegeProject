package com.pharma.daoi;

import java.util.Vector;

import com.pharma.bean.ProfileTo;
import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.profileformbean;

//SecurityDAO Interface
public interface SecurityDAOI {
	public Vector<ProfileTo> loginCheck(ProfileTo pro)
	throws ConnectionException;
	public void loginaudit(String loginid)throws ConnectionException;

	public boolean changePassword(ProfileTo pro)throws ConnectionException;

	public boolean changeQuestion(profileformbean regbean)throws ConnectionException;

	public String recoverPasswordByQuestion(profileformbean regbean)throws ConnectionException;

	public String checkUser(String userName)throws ConnectionException;

	public boolean checkAvailability(String userid)throws ConnectionException;
}

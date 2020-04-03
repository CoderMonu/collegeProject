package com.pharma.daoi;

import java.io.FileNotFoundException;

import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.profileformbean;

//ProfileDAO Interface
public interface ProfileDAOI {
	public boolean insertNewUser(profileformbean pro)
			throws FileNotFoundException, ConnectionException;

	public void logout1(String user)throws ConnectionException;

	public boolean logout(String loginid)throws ConnectionException;

	public String passwordRecovery(profileformbean pro)throws ConnectionException;

	public String checkUser(String userid)throws ConnectionException;

	public boolean changePass(profileformbean pro)throws ConnectionException;

	public boolean changeQuestion(profileformbean pro)throws ConnectionException;

	public profileformbean getProfile(String loginname, String path)throws ConnectionException;

	public boolean updateProfile(profileformbean prof)throws ConnectionException;
	
}
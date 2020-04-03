package com.pharma.servicei;

import java.io.FileNotFoundException;

import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.profileformbean;

//ProfileService Interface
public interface ProfileServiceI {
	public boolean insertNewUser(profileformbean pf)
			throws  ConnectionException,FileNotFoundException;

	public void logout1(String user)throws  ConnectionException;

	public boolean logout(String loginid) throws ConnectionException;

	public String passwordRecovery(profileformbean pf)
	throws  ConnectionException;

	public String checkUser(String userName)throws  ConnectionException;

	public boolean changePass(profileformbean pf) throws ConnectionException;

	public boolean changeQuestion(profileformbean pf)
			throws ConnectionException;

	public profileformbean getProfile(String loginname, String path)
			 throws  ConnectionException;;

	public boolean updateProfile(profileformbean prof) throws 
			ConnectionException;
}
/*
 * public boolean registration(profileformbean regbean) throws
 * LoginException,ConnectionException ; public Corehash getReportFromTo(String
 * sdate,String edate)throws DataNotFoundException; public Corehash
 * getReportPresent()throws DataNotFoundException; public boolean
 * changeAccountStatus(String loginid,int status) throws
 * LoginException,ConnectionException;
 */

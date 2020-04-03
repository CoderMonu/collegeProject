package com.pharma.serviceimpl;

import java.io.FileNotFoundException;

import com.pharma.daoi.ProfileDAOI;
import com.pharma.daoimpl.ProfileDAOImpl;
import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.profileformbean;
import com.pharma.servicei.ProfileServiceI;
import com.pharma.util.Corehash;

//ProfileServiceImpl class
public class ProfileServiceImpl implements ProfileServiceI {
	ProfileDAOI pdao = new ProfileDAOImpl();
	boolean flag = false;
	profileformbean pfb = null;
	Corehash ch = null;

	public boolean changePass(profileformbean pf) throws ConnectionException {
		return false;
	}

	public boolean changeQuestion(profileformbean pf)
			throws ConnectionException {
		return false;
	}

	public boolean insertNewUser(profileformbean pf)
			throws FileNotFoundException, ConnectionException {
		return pdao.insertNewUser(pf);

	}

	public boolean logout(String loginid) throws ConnectionException {
		return false;
	}

	public void logout1(String user) {
	}

	public String passwordRecovery(profileformbean pf)
			throws ConnectionException {
		return null;
	}

	public String checkUser(String userName) throws ConnectionException {
		return pdao.checkUser(userName);

	}

	public profileformbean getProfile(String loginname, String path)
			throws ConnectionException {
		return pdao.getProfile(loginname, path);

	}

	public boolean updateProfile(profileformbean prof)
			throws ConnectionException {
		return pdao.updateProfile(prof);

	}
}
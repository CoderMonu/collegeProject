package com.pharma.delegate;

import java.io.FileNotFoundException;
import java.util.Vector;

import com.pharma.bean.ProfileTo;
import com.pharma.exceptions.ConnectionException;
import com.pharma.exceptions.LoginException;
import com.pharma.formbeans.profileformbean;
import com.pharma.servicei.ProfileServiceI;
import com.pharma.servicei.SecurityServiceI;
import com.pharma.servicei.UserServiceI;
import com.pharma.serviceimpl.ProfileServiceImpl;
import com.pharma.serviceimpl.SecurityServiceImpl;
import com.pharma.serviceimpl.UserServiceImpl;

//Profile Delegate Class
public class ProfileMgrDelegate {
	ProfileServiceI psi = new ProfileServiceImpl();
	SecurityServiceI ssi = new SecurityServiceImpl();
	Vector<ProfileTo> vpro = null;
	public boolean insertNewUser(profileformbean pf) throws LoginException,
			FileNotFoundException, ConnectionException {
		return psi.insertNewUser(pf);
	}

	public String checkUser(String userName) throws ConnectionException {

		return psi.checkUser(userName);
	}

	public profileformbean getProfile(String loginname, String path)
			throws ConnectionException {
		return psi.getProfile(loginname, path);
	}

	public boolean updateProfile(profileformbean prof) throws LoginException,
			ConnectionException {
		return psi.updateProfile(prof);
	}

	UserServiceI uvsi = new UserServiceImpl();

	public Vector<profileformbean> viewUser(String path, String user,
			String status) throws FileNotFoundException, ConnectionException {
		return uvsi.viewUser(path, user, status);
	}

	public boolean updateUserStatus(int userid) throws ConnectionException {

		return uvsi.updateUserStatus(userid);
	}

	public Vector<profileformbean> viewprofile(String path, String user)
			throws FileNotFoundException, ConnectionException {
		return uvsi.viewprofile(path, user);
	}

	public boolean deleteUser(int userid) throws ConnectionException {

		return uvsi.deleteUser(userid);
	}

	//SecurityServiceI ssi = new SecurityServiceImpl();

	public boolean changePassword(ProfileTo pro)
			throws ConnectionException, ConnectionException {
		return ssi.changePassword(pro);
	}

	public boolean changeQuestion(profileformbean regbean)
			throws LoginException, ConnectionException {
		return ssi.changeQuestion(regbean);
	}

	public Vector<ProfileTo> loginCheck(ProfileTo pro) throws LoginException,
			ConnectionException {
		vpro = ssi.loginCheck(pro);
		return vpro;
	}

	public void loginaudit(String loginid) throws ConnectionException {
		ssi.loginaudit(loginid);
	}

	public String recoverPasswordByQuestion(profileformbean regbean)
			throws ConnectionException {
		return ssi.recoverPasswordByQuestion(regbean);
	}

	public boolean checkAvailability(String userid) throws ConnectionException {

		return ssi.checkAvailability(userid);
	}
}

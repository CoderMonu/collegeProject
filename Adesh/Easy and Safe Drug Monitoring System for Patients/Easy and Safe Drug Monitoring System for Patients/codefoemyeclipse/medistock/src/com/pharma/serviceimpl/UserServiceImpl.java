package com.pharma.serviceimpl;


import java.io.FileNotFoundException;
import java.util.Vector;

import com.pharma.daoi.UserDAOI;
import com.pharma.daoimpl.UserDAOImpl;
import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.profileformbean;
import com.pharma.servicei.UserServiceI;

//UserServiceImpl Class
public class UserServiceImpl implements UserServiceI {
	String logintype = "";
	boolean flag = false;
	Vector<profileformbean> vpro = null;
	UserDAOI userDAOI = new UserDAOImpl();

	public Vector<profileformbean> viewUser(String path, String user,
			String status) throws ConnectionException{
		return userDAOI.viewUser(path, user, status);
		
	}

	public boolean updateUserStatus(int userid) throws ConnectionException {
		return userDAOI.updateUserStatus(userid);
		
	}

	public Vector<profileformbean> viewprofile(String user, String path)
			throws FileNotFoundException, ConnectionException {
		return userDAOI.viewprofile(user, path);
		
	}

	public boolean deleteUser(int userid) throws ConnectionException {
		return userDAOI.deleteUser(userid);
		
	}
}

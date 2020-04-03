package com.pharma.servicei;

import java.io.FileNotFoundException;
import java.util.Vector;

import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.profileformbean;

//UserService Interface
public interface UserServiceI {
	public Vector<profileformbean> viewUser(String path, String user,
			String status) throws FileNotFoundException, ConnectionException;

	public boolean updateUserStatus(int userid) throws ConnectionException;

	public Vector<profileformbean> viewprofile(String path, String user)
			throws FileNotFoundException, ConnectionException;

	public boolean deleteUser(int userid) throws ConnectionException;

}

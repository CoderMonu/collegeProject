package com.pharma.daoi;


import java.util.Vector;

import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.profileformbean;


//UserDAO Interface
public interface UserDAOI {

	
	public boolean updateUserStatus(int userid)throws ConnectionException;

	public Vector<profileformbean> viewprofile(String path, String user)throws ConnectionException;

	public boolean deleteUser(int userid)throws ConnectionException;
	
	
	public Vector<profileformbean> viewUser(String realpath, String user,
			String status)throws ConnectionException; 
	
}

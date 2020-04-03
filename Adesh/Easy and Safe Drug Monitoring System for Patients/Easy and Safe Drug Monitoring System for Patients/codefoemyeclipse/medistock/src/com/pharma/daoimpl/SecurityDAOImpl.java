package com.pharma.daoimpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Vector;

import com.pharma.bean.ProfileTo;
import com.pharma.daoi.SecurityDAOI;
import com.pharma.dbutil.DBConnectionFactory;
import com.pharma.dbutil.SqlConstants;
import com.pharma.exceptions.ConnectionException;
import com.pharma.formbeans.profileformbean;
import com.pharma.util.LoggerManager;

/**
 * SecurityDAOImpl Class implements the Login check action,change password
 * action,check user action,forget password action
 */
public class SecurityDAOImpl implements SecurityDAOI {
	Connection con;
	@SuppressWarnings("unused")
	private String desc;
	private boolean flag;
	PreparedStatement pstmt;
	ResultSet rs;

	public void closeConnection() {
		try {

			if (pstmt != null)
				pstmt.close();

			if (con != null)
				con.close();
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	}

	/** Creates a new instance of SecurityDAO */
	/*
	 * public SecurityDAOImpl() { con = DBConnectionFactory.getConnection(); }
	 */
	/**
	 * Login Check(non-Javadoc) method implements the user login check is it
	 * valid user name and password or not
	 * 
	 * @see com.floor.daoi.SecurityDAOI#loginCheck(com.floor.formbeans.profileformbean)
	 * @param loginid
	 *            is a variable which represents the authenticated user name
	 * @param password
	 *            is a variable which represents the password of the particular
	 *            user
	 * @return role is a variable which returns role of the particular user
	 */
	public Vector<ProfileTo> loginCheck(ProfileTo pro)
	throws ConnectionException {
		ProfileTo profileTO = null;
		Vector<ProfileTo> vpro = new Vector<ProfileTo>();
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._CHECK_USER);
			String username = pro.getUserName();
			String password = pro.getPassword();
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				profileTO = new ProfileTo();
				profileTO.setUserid(rs.getInt(1));
				profileTO.setLoginType(rs.getString(2));
				profileTO.setLoginid(rs.getString(3));
				vpro.add(profileTO);
			}
		} catch (SQLException e) {
			throw new ConnectionException(
					"Some Technical problem Occured Please Try Later");
		} finally {
			closeConnection();
		}
		return vpro;
	} 
	/**
	 * Method for login audit(non-Javadoc) method represents the logout action
	 * 
	 * @see com.floor.daoi.SecurityDAOI#loginaudit(java.lang.String)
	 */
	public void loginaudit(String loginid) throws ConnectionException {
		try {
			con = DBConnectionFactory.getConnection();
			CallableStatement cstmt = con
					.prepareCall("{call signoutprocedure(?)}");
			cstmt.setString(1, loginid);
			cstmt.execute();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConnection();
		}
	}

	/**
	 * Change Password(non-Javadoc) method represents the change the user
	 * password for the user specification
	 * 
	 * @see com.floor.daoi.SecurityDAOI#changePassword(com.floor.formbeans.profileformbean)
	 * @param loginid
	 *            is a variable which represents the authenticated user name
	 * @param oldpassword
	 *            is a variable which represents the password of the particular
	 *            user
	 *@param newpassword
	 *            is a variable which represents the password of the particular
	 *            user
	 *@return flag which is the variable represents the flag value
	 */
	public boolean changePassword(ProfileTo pf)
			throws ConnectionException {
		try {
			String newpass = pf.getNewpassword();
			System.out.println(" security dao new pass " + newpass);
			String user = pf.getUserName();
			System.out.println("security dao user :" + user);
			String oldpass = pf.getOldpassword();
			System.out.println("security dao oldpass :" + oldpass);
			pstmt = con.prepareStatement(SqlConstants._CHANGE_PASSWORD);
			pstmt.setString(1, newpass);
			pstmt.setString(2, user);
			pstmt.setString(3, oldpass);
			int c = pstmt.executeUpdate();
			if (c > 0) {
				flag = true;
				con.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	/**
	 * Change Secret Question(non-Javadoc)method represents the check the
	 * security question for providing the security for their profiles
	 * 
	 * @see com.floor.daoi.SecurityDAOI#changeQuestion(com.collegemagazine.formbeans.profileformbean)
	 * @param loginid
	 *            is a variable which represents the authenticated user name
	 * @param oldpassword
	 *            is a variable which represents the password of the particular
	 *            user
	 * @param secretequestid
	 *            is a variable which represents the authenticated their profile
	 * @param secretans
	 *            is a variable which represents the authenticated their profile
	 *            user
	 *@return flag which is the variable represents the flag value
	 */
	public boolean changeQuestion(profileformbean regbean)
			throws ConnectionException {
		String loginid = regbean.getLoginid();
		String password = regbean.getPassword();
		String secretquestid = regbean.getSquest();
		String secretans = regbean.getSecrete();
		CallableStatement cstmt;
		int i = 0;
		try {
			con = DBConnectionFactory.getConnection();
			con.setAutoCommit(false);
			cstmt = con.prepareCall("{call ChangeQuestion(?,?,?,?,?)}");
			cstmt.setString(1, loginid);
			cstmt.setString(2, password);
			cstmt.setString(3, secretquestid);
			cstmt.setString(4, secretans);
			cstmt.registerOutParameter(5, Types.INTEGER);
			cstmt.execute();
			i = cstmt.getInt(5);
			if (i == 1) {
				flag = true;
				con.commit();
			} else {
				flag = false;
				con.rollback();
			}
			con.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
			LoggerManager.writeLogSevere(ex);
			flag = false;
			try {
				con.rollback();
			} catch (SQLException sex) {
				LoggerManager.writeLogSevere(sex);
			}
		} catch (Exception e) {
			e.printStackTrace();
			LoggerManager.writeLogSevere(e);
			flag = false;
			try {
				con.rollback();
			} catch (SQLException sex) {
				LoggerManager.writeLogSevere(sex);
			} finally {
				closeConnection();
			}
		}
		return flag;
	}

	/**
	 * Recover Password using Existed Question(non-Javadoc)method is use to
	 * re_get the password
	 * 
	 * @see com.floor.daoI.SecurityDAOi#recoverPasswordByQuestion(com.floor.formbeans.profileformbean)
	 * @param loginid
	 *            is a variable which represents the authenticated user name
	 * @param secretequestid
	 *            is a variable which represents the authenticated their profile
	 * @param secretans
	 *            is a variable which represents the authenticated their profile
	 *            user
	 *@return flag which is the variable represents the flag value
	 */
	public String recoverPasswordByQuestion(profileformbean regbean) {
		String password;
		String loginid = regbean.getLoginid();
		String secretquestid = regbean.getSquest();
		String secretans = regbean.getSecrete();
		try {
			con = DBConnectionFactory.getConnection();
			con.setAutoCommit(true);
			CallableStatement cstmt = con
					.prepareCall("{call RecoverPassword(?,?,?,?)}");
			cstmt.setString(1, loginid);
			cstmt.setString(2, secretquestid);
			cstmt.setString(3, secretans);
			cstmt.registerOutParameter(4, Types.VARCHAR);
			cstmt.execute();
			password = cstmt.getString(4);
			con.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
			LoggerManager.writeLogSevere(ex);
			password = "";
		} catch (Exception e) {
			LoggerManager.writeLogSevere(e);
			password = "";
		} finally {
			closeConnection();
		}
		return password;
	}

	/**
	 * Check User(non-Javadoc) method is implemented checking the authenticated
	 * user
	 * 
	 * @see com.floor.daoi.SecurityDAOI#checkUser(java.lang.String)
	 * @return user is a variable which returns the user
	 */
	public String checkUser(String userName) throws ConnectionException {
		String user = null;
		System.out.println("username" + userName);
		try {
			con.setAutoCommit(true);
			CallableStatement cstmt = con
					.prepareCall("{ call loginidavailablity(?,?) }");
			cstmt.setString(1, userName);
			cstmt.registerOutParameter(2, Types.VARCHAR);
			cstmt.execute();
			user = cstmt.getString(2);
			con.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
			LoggerManager.writeLogSevere(ex);
			user = null;
		} catch (Exception e) {
			LoggerManager.writeLogSevere(e);
			user = null;
		} finally {
			closeConnection();
		}
		return user;
	}

	/**
	 * Login Availability(non-Javadoc) method implements the availability for
	 * the user at the time of registration
	 * 
	 * @see com.floor.daoi.SecurityDAOI#checkAvailability(java.lang.String)
	 * @return flag is a variable which returns the flag value
	 */
	public boolean checkAvailability(String userid) throws ConnectionException {
		boolean flag = false;
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con
					.prepareStatement("select userid from userdetails where loginid=?");
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				flag = true;
			}
		} catch (SQLException e) {
			throw new ConnectionException(
					"Checking is not possible at this time");
		} finally {
			closeConnection();
		}
		return flag;
	}
	
	
	/**
	 * Login Availability(non-Javadoc) method implements the availability for
	 * the user at the time of registration
	 * 
	 * @see com.floor.daoi.SecurityDAOI#checkAvailability(java.lang.String)
	 * @return flag is a variable which returns the flag value
	 */
	public boolean checkAvailabilityforDealer(String userid) throws ConnectionException {
		boolean flag = false;
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con
					.prepareStatement("select userid from userdetails where loginid=?");
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				flag = true;
			}
		} catch (SQLException e) {
			throw new ConnectionException(
					"Checking is not possible at this time");
		} finally {
			closeConnection();
		}
		return flag;
	}
	/**
	 * Login Availability(non-Javadoc) method implements the availability for
	 * the user at the time of registration
	 * 
	 * @see com.floor.daoi.SecurityDAOI#checkAvailability(java.lang.String)
	 * @return flag is a variable which returns the flag value
	 */
	public boolean CustomercheckAvailability(String userid) throws ConnectionException {
		boolean flag = false;
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con
					.prepareStatement("select userid from userdetails where loginid=?");
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				flag = true;
			}
		} catch (SQLException e) {
			throw new ConnectionException(
					"Checking is not possible at this time");
		} finally {
			closeConnection();
		}
		return flag;
	}
}

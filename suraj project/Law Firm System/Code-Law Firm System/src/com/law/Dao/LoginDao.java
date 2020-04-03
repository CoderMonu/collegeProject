package com.law.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import com.nit.bean.CaseBean;
import com.nit.bean.ChangePasswordTo;
import com.nit.bean.RegisterBean;
import com.nit.bean.UserBean;

public class LoginDao {
	static Connection con;
	PreparedStatement pst, pst3;
	static PreparedStatement pst1;
	static ResultSet rs;

	public LoginDao() throws Exception {
		con = DBConnectionFactory.getConnection();
		System.out.println("Connection:" + con);
	}

	public boolean newuser(RegisterBean pf) {

		boolean flag = false;

		String fname = pf.getFname();
		String lname = pf.getLname();
		String ltype = pf.getLogintype();
		String Uname = pf.getUsername();
		String Pass = pf.getPassword();
		String cpass = pf.getCpass();
		System.out.println(Uname);
		System.out.println(Pass);

		try {
			pst = con
					.prepareStatement("insert into LOGINDETAIL values((select nvl(max(userid),1000)+1 from LOGINDETAIL),?,?,?,?,?,?)");
			pst.setString(1, fname);
			pst.setString(2, lname);
			pst.setString(3, ltype);
			pst.setString(4, Uname);
			pst.setString(5, Pass);
			pst.setString(6, cpass);
			rs = pst.executeQuery();

			while (rs.next())

			{

				System.out.println(rs.getString(1));

			}

			pst3 = con
					.prepareStatement("select FNAME,LNAME,LOGINTYPE from LOGINDETAIL ");

			ResultSet rs3 = pst3.executeQuery();
			while (rs3.next()) {
				UserBean ub = new UserBean();
				ub.setFname(rs3.getString(1));
				ub.setLname(rs3.getString(2));
				ub.setLogintype(rs3.getString(3));

			}

		} catch (Exception e) {

		}
		return flag;

	}

	public static String loginCheck(RegisterBean ps) throws Exception {
		String path = null;
		try {
			con = DBConnectionFactory.getConnection();

			System.out.println("in DAo impl is..con is....." + con);

			pst1 = con
					.prepareStatement("select LOGINTYPE,USERNAME,PASS from LOGINDETAIL where USERNAME=? and PASS=? ");

			String uname = ps.getUsername();
			System.out.println("in Login DAO class.....uname is" + uname);
			String pwd = ps.getPassword();
			System.out.println("in Login  DAO class.....password is" + pwd);

			pst1.setString(1, uname);
			pst1.setString(2, pwd);

			rs = pst1.executeQuery();

			if (rs.next()) {
				path = rs.getString(1);
				System.out.println("in result set login type is........."
						+ path);
				String uid = rs.getString(2);
				/*
				 * pst1=con.prepareStatement("insert into loginmaster (userid) values(?)"
				 * ); pst1.setString(1, uid); int i= pst1.executeUpdate();
				 */
				// System.out.println("in login master rows update d======>"+i);
			}

		} catch (SQLException e) {

			e.printStackTrace();
			System.out.println("Exception raised" + e);
		}
		return path;

	}

	public Vector<RegisterBean> viewUserDetails(String path1) {
		{

			Vector<RegisterBean> packdetails = new Vector<RegisterBean>();
			RegisterBean pack = null;
			String path = "";
			try {

				pst1 = con.prepareStatement("select * from  LOGINDETAIL ");

				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					pack = new RegisterBean();
					pack.setFname(rs.getString(2));
					pack.setLname(rs.getString(3));
					pack.setLogintype(rs.getString(4));

					packdetails.add(pack);
				}
			} catch (SQLException e) {
				System.out.println(e);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(e);
			}
			return packdetails;

		}

	}

	public boolean changePass(RegisterBean pt) {

		boolean flag = false;
		try {
			con = DBConnectionFactory.getConnection();

			System.out.println("in DAo impl is..con is....." + con);

			String loginid = pt.getUsername();
			String opass = pt.getPassword();
			String npass = pt.getNewpassword();

			pst1 = con
					.prepareStatement("update USERDETAILS set password=? where USERNAME=? and password=?");
			pst1.setString(1, npass);
			pst1.setString(2, loginid);

			pst1.setString(3, opass);
			int i = pst1.executeUpdate();
			if (i == 1) {
				flag = true;
			} else
				flag = false;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return flag;

	}

	public boolean deleteUser(int userid) {

		boolean flag = false;

		try {

			pst3 = con
					.prepareStatement("delete from LOGINDETAIL where userid=?");

			pst3.setInt(1, userid);

			int delete = pst3.executeUpdate();

			if (delete > 0) {
				flag = true;
				con.commit();
			} else {
				flag = false;
				con.rollback();
			}
		} catch (SQLException e) {

			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
			}
		}

		finally {
			try {
				if (con != null)
					con.close();
			} catch (SQLException e) {

			}
		}
		return flag;

	}

	public ArrayList<RegisterBean> getUserInfo(String path) {
		ArrayList<RegisterBean> arb = null;

		String userid = "";

		try {

			pst3 = con.prepareStatement("select *from LOGINDETAIL");

			// pstmt.setString(1,"user");
			rs = pst3.executeQuery();

			arb = new ArrayList<RegisterBean>();

			while (rs.next()) {

				RegisterBean rb = new RegisterBean();

				userid = rs.getString(1);

				rb.setFname(userid);
				rb.setLname(rs.getString(2));
				rb.setLogintype(rs.getString(3));
				rb.setUsername(rs.getString(4));

				rb.setPassword(rs.getString(5));
				rb.setCpass(rs.getString(6));

				arb.add(rb);
			}

		} catch (Exception se) {
			se.printStackTrace();
		}

		return arb;
	}

	public boolean changePassword(String fname,String lname,String ltype) throws Exception {
		boolean flag = false;
RegisterBean cp=new RegisterBean();
		try {
			con = DBConnectionFactory.getConnection();

			String npas=cp.getNewpassword();
			String nname=cp.getUsername();
			String opass=cp.getPassword();
			System.out.println(fname+"====>"+lname+"=====>"+ltype);
			
			pst = con
					.prepareStatement("update LOGINDETAIL set PASS=? where  USERNAME=? and PASS=?");
			pst.setString(1, ltype);
			pst.setString(2, fname);
			pst.setString(3, lname);
			int n = pst.executeUpdate();
			if (n > 0) {
				flag = true;
				con.commit();

			} else {
				flag = false;
				con.rollback();

			}
		} catch (SQLException ex) {
			ex.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
			throw new Exception(
					"Problem Occured during the change the password. Please Try Later");

		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();

			}

		} finally {

		}

		return flag;

	}

	public Vector<RegisterBean> viewUserDetails1(String path1) {
		{

			Vector<RegisterBean> packdetails = new Vector<RegisterBean>();
			RegisterBean pack = null;
			String path = "";
			try {

				pst1 = con
						.prepareStatement("select * from  LOGINDETAIL where LoginType='NormalUser'");

				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					pack = new RegisterBean();
					pack.setUserId(rs.getString(1));
					pack.setFname(rs.getString(2));
					pack.setLname(rs.getString(3));
					pack.setLogintype(rs.getString(4));
					pack.setUsername(rs.getString(5));

					packdetails.add(pack);
				}
			} catch (SQLException e) {
				System.out.println(e);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(e);

				try {
					con.rollback();
				} catch (SQLException se) {
					se.printStackTrace();
					System.out.println(se);
				}
			} finally {
				try {
					if (con != null)
						con.close();
				} catch (SQLException e) {
					System.out.println(e);
				}
			}
			return packdetails;

		}

	}

	public Vector<RegisterBean> baseFormCoding(RegisterBean rto1)
			throws Exception {

		Vector<RegisterBean> vsb = null;

		try {
			con = DBConnectionFactory.getConnection();

			pst = con.prepareStatement(" SELECT * FROM LOGINDETAIL  ");

			// pstmt.setInt(1, rto1.getDid());
			// System.out.println(" in dao did id "+rto1.getDid());
			// rs = pstmt.executeQuery();
			vsb = new Vector<RegisterBean>();
			rs = pst.executeQuery();

			while (rs.next()) {

				RegisterBean rto = new RegisterBean();

				rto.setFname(rs.getString(1));
				rto.setLname(rs.getString(2));
				System.out.println("aname in dao is " + rs.getString(2));
				rto.setLogintype(rs.getString(3));

				vsb.add(rto);

			}
		} catch (SQLException e) {
			throw new Exception(
					"problem occured during getting the sitation string");

		}
		System.out.println("-" + vsb.size());
		return vsb;

	}

	public Vector<RegisterBean> viewUsers(RegisterBean rto) throws Exception {

		Vector<RegisterBean> vsb = null;

		try {

			con = DBConnectionFactory.getConnection();
			System.out.println("con value is " + con);
			int userid = 0;
			String role = rto.getLogintype();
			System.out.println("role in daoimpl" + role);
			System.out.println("username is " + rto.getUsername());
			pst = con
					.prepareStatement("select u.firstname,u.lastname,u.logintype from LOGINDETAIL u where  userid=?");
			pst.setString(1, rto.getUserId());

			rs = pst.executeQuery();
			while (rs.next()) {
				userid = rs.getInt(1);
			}

			System.out.println("userid id " + userid);



			vsb = new Vector<RegisterBean>();

			while (rs.next()) {

				RegisterBean rt = new RegisterBean();

				rt.setFname(rs.getString(1));
				rt.setLname(rs.getString(2));
				rt.setLogintype(rs.getString(3));
				
				vsb.add(rt);

			}

		} catch (SQLException e) {
			e.printStackTrace();
			throw new Exception("problem occured during the retreving details");

		}
		return vsb;

	}

	public static Vector<RegisterBean> edit(String path1) {
		{

			Vector<RegisterBean> packdetails = new Vector<RegisterBean>();
			RegisterBean pack = null;
			String path = "";
			try {

				pst1 = con
						.prepareStatement("select * from  LOGINDETAIL where FIRSTNAME=? ");
				String fname = pack.getFname();
				pst1.setString(1, fname);
				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					pack = new RegisterBean();
					pack.setFname(rs.getString(2));
					pack.setLname(rs.getString(3));
					pack.setLogintype(rs.getString(4));
					pack.setUsername(rs.getString(5));
					pack.setPassword(rs.getString(6));

					packdetails.add(pack);
				}
			} catch (SQLException e) {
				System.out.println(e);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(e);

				try {
					con.rollback();
				} catch (SQLException se) {
					se.printStackTrace();
					System.out.println(se);
				}
			} finally {
				try {
					if (con != null)
						con.close();
				} catch (SQLException e) {
					System.out.println(e);
				}
			}
			return packdetails;

		}
	}

	public boolean newpass(RegisterBean cp) throws SQLException {
		boolean flag = false;

		try {
			con = DBConnectionFactory.getConnection();
			String fname = cp.getFname();
			System.out.println(fname);
			String pass = cp.getPassword();
			System.out.println(pass);
			String npass = cp.getNewpassword();
			System.out.println(npass);
			String cpass = cp.getCpass();
			System.out.println(cpass);
			pst = con
					.prepareStatement("update LOGINDETAIL set PASS=? where  USERNAME=? and PASS=? and CPASS=?");
			pst.setString(1, fname);
			pst.setString(2, pass);
			pst.setString(3, npass);
			pst.setString(4, cpass);
			int n = pst.executeUpdate();
			if (n > 0) {
				flag = true;
				con.commit();

			} else {
				flag = false;
				con.rollback();

			}
		} catch (SQLException ex) {
			ex.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
			

		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();

			}

		} finally {
			con.close();
		}

		return flag;

	}
}

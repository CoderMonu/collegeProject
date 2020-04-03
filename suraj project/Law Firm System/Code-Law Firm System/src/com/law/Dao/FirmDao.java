package com.law.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.nit.bean.FirmMasterBean;
import com.nit.bean.RegisterBean;
import com.nit.bean.UserBean;

public class FirmDao {
	static Connection con;
	PreparedStatement pst, pst3;
	static PreparedStatement pst1;
	static ResultSet rs;

	public FirmDao() throws Exception {
		con = DBConnectionFactory.getConnection();
		System.out.println("Connection:" + con);
	}

	public boolean newfirmMaster(FirmMasterBean pf) {

		boolean flag = false;

		String fname = pf.getFirmName();
		String sname = pf.getShortName();
		String sadd = pf.getStreetAddress();
		String country = pf.getCountry();
		String Phone = pf.getPhone();
		String state = pf.getState();
		String mobile = pf.getMobileNo();
		String city = pf.getCity();
		String email = pf.getEmail();
		String fax = pf.getFax();
		String cperson = pf.getContactPerson();
		String cphone = pf.getCPhone();

		try {
			pst = con
					.prepareStatement("insert into FMASTERINFO values((select nvl(max(MASTERID),1000)+1 from FMASTERINFO),?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, fname);
			pst.setString(2, sname);
			pst.setString(3, sadd);
			pst.setString(4, country);
			pst.setString(5, Phone);
			pst.setString(6, state);
			pst.setString(7, mobile);
			pst.setString(8, city);
			pst.setString(9, email);
			pst.setString(10, fax);
			pst.setString(11, cperson);
			pst.setString(12, cphone);
			rs = pst.executeQuery();

			while (rs.next())

			{

				System.out.println(rs.getString(1));

			}

		} catch (Exception e) {

		}
		return flag;

	}


public Vector<FirmMasterBean> viewFM(String path1) {
	 {

		Vector<FirmMasterBean> packdetails = new Vector<FirmMasterBean>();
		FirmMasterBean pack = null;
		String path = "";
		try {

			pst3 = con.prepareStatement("select * from  FMASTERINFO ");
			
			rs = pst3.executeQuery();
			System.out.println("ResultSet===>"+rs);
			while (rs.next()) {
				pack = new FirmMasterBean();
				pack.setFmid(rs.getString(1));
				pack.setFirmName(rs.getString(2));
				pack.setShortName(rs.getString(3));

				pack.setStreetAddress(rs.getString(4));
				pack.setCountry(rs.getString(5));
				pack.setPhone(rs.getString(6));

				pack.setState(rs.getString(7));
				pack.setMobileNo(rs.getString(8));
				pack.setCity(rs.getString(9));
				pack.setEmail(rs.getString(10));
				/*pack.setEmail(rs.getString(11));*/
				
				pack.setContactPerson(rs.getString(12));
				pack.setCPhone(rs.getString(13));
								
			
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
public Vector<FirmMasterBean> viewUserDetails(String path1) {
	{

		Vector<FirmMasterBean> packdetails = new Vector<FirmMasterBean>();
		FirmMasterBean pack = null;
		String path = "";
		try {

			pst1 = con.prepareStatement("select * from  FMASTERINFO ");

			rs = pst1.executeQuery();
			System.out.println("ResultSet===>" + rs);
			while (rs.next()) {
				pack = new FirmMasterBean();
				pack.setFirmName(rs.getString(2));
				pack.setState(rs.getString(7));
				pack.setCity(rs.getString(9));
				pack.setPhone(rs.getString(6));
				pack.setContactPerson(rs.getString(12));
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

}

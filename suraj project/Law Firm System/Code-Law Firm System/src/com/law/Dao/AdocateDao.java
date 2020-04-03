package com.law.Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.nit.bean.AdvocateBean;
import com.nit.bean.ClientBean;


public class AdocateDao{
static Connection con;
PreparedStatement pst,pst3;
static PreparedStatement pst1;
static ResultSet rs;

public AdocateDao() throws Exception
{
con=DBConnectionFactory.getConnection();
System.out.println("Connection:"+con);
	}

	public boolean newAdvocatetMaster(AdvocateBean pf) {
	
		boolean flag=false;
	

	String aname=pf.getAdvocateName();
	String quali=pf.getQualification();
	String alevels =pf.getAdvocateLevel();
	String aaddr=pf.getStreetAddress();
	String country=pf.getCountry();
	String phone=pf.getPhone();
	String st=pf.getState();
	String mb=pf.getMobile();
	String ct=pf.getCity();
	String em=pf.getEmail();
	String pc=pf.getPinCode();
	
		
		try {
				pst= con.prepareStatement("insert into ADVOCATEMASTER values((select nvl(max(AID),1000)+1 from ADVOCATEMASTER),?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, aname);
		pst.setString(2,quali);
		pst.setString(3, alevels);
		pst.setString(4, aaddr);
		pst.setString(5, country);
		pst.setString(6, phone);
		pst.setString(7, st);
		pst.setString(8, mb);
		pst.setString(9, ct);
		pst.setString(10, em);
		pst.setString(11, pc);
		
		
		rs = pst.executeQuery();
		
				
		
		
		while(rs.next())
			
		{
			
			System.out.println(rs.getString(1));
			
		}
		
		
		
	}
	catch(Exception e)
	{
		
	}
	return flag;
	
	
	}
	public Vector<AdvocateBean> viewAM(String path1) {
		 {

			Vector<AdvocateBean> packdetails = new Vector<AdvocateBean>();
			AdvocateBean pack = null;
			String path = "";
			try {

				pst3 = con.prepareStatement("select * from  ADVOCATEMASTER");
				
				rs = pst3.executeQuery();
				System.out.println("ResultSet===>"+rs);
				while (rs.next()) {
					pack = new AdvocateBean();
					pack.setAid(rs.getString(1));
					pack.setAdvocateName(rs.getString(2));
					pack.setQualification(rs.getString(3));

					pack.setAdvocateLevel(rs.getString(4));
					pack.setStreetAddress(rs.getString(5));
					pack.setMobile(rs.getString(9));

					pack.setEmail(rs.getString(11));
					pack.setPinCode(rs.getString(12));
									
				
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
	public Vector<AdvocateBean> viewClient(String path1) {
		{

			Vector<AdvocateBean> packdetails = new Vector<AdvocateBean>();
			AdvocateBean pack = null;
			String path = "";
			try {

				pst1 = con.prepareStatement("select * from  ADVOCATEMASTER ");

				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					pack = new AdvocateBean();
					pack.setAdvocateName(rs.getString(2));
					pack.setQualification(rs.getString(3));
					pack.setAdvocateLevel(rs.getString(4));
					pack.setPhone(rs.getString(7));
					pack.setEmail(rs.getString(11));
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

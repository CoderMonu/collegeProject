package com.law.Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.nit.bean.CourtBean;
import com.nit.bean.FirmMasterBean;


public class CourtDao{
static Connection con;
PreparedStatement pst,pst3;
static PreparedStatement pst1;
static ResultSet rs;

public CourtDao() throws Exception
{
con=DBConnectionFactory.getConnection();
System.out.println("Connection:"+con);
	}

	public boolean newCourtMaster(CourtBean pf) {
	
		boolean flag=false;
	

	String cname=pf.getCourtcode();
	String sname=pf.getCourtname();
	String sadd =pf.getCourttype();
	String country=pf.getCourtside();
	String Phone=pf.getCourtaddress();
	String state=pf.getCountry();
	String mobile=pf.getState();
	String city=pf.getCity();
	
		
		try {
				pst= con.prepareStatement("insert into COURTMASTER values((select nvl(max(CID),1000)+1 from COURTMASTER),?,?,?,?,?,?,?,?)");
		pst.setString(1, cname);
		pst.setString(2,sname);
		pst.setString(3, sadd);
		pst.setString(4, country);
		pst.setString(5, Phone);
		pst.setString(6, state);
		pst.setString(7, mobile);
		pst.setString(8, city);
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
	public Vector<CourtBean> viewCM(String path1) {
		 {

			Vector<CourtBean> packdetails = new Vector<CourtBean>();
			CourtBean pack = null;
			String path = "";
			try {

				pst3 = con.prepareStatement("select * from  COURTMASTER ");
				
				rs = pst3.executeQuery();
				System.out.println("ResultSet===>"+rs);
				while (rs.next()) {
					pack = new CourtBean();
					pack.setCid(rs.getString(1));
					pack.setCourtcode(rs.getString(2));
					pack.setCourtname(rs.getString(3));

					pack.setCourttype(rs.getString(4));
					pack.setCourtside(rs.getString(5));
					pack.setCourtaddress(rs.getString(6));

					pack.setCountry(rs.getString(7));
					pack.setState(rs.getString(8));
					pack.setCity(rs.getString(9));
									
				
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
	public Vector<CourtBean> viewCm(String path1) {
		{

			Vector<CourtBean> packdetails = new Vector<CourtBean>();
			CourtBean pack = null;
			String path = "";
			try {

				pst1 = con.prepareStatement("select * from  COURTMASTER ");

				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					pack = new CourtBean();
					pack.setCourtcode(rs.getString(2));
					pack.setCourttype(rs.getString(4));
					pack.setCourtside(rs.getString(5));
					pack.setState(rs.getString(8));
					pack.setCourtaddress(rs.getString(6));
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

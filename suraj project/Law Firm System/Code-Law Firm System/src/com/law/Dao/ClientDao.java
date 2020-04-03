package com.law.Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.nit.bean.ClientBean;
import com.nit.bean.CourtBean;


public class ClientDao{
static Connection con;
PreparedStatement pst,pst3;
static PreparedStatement pst1;
static ResultSet rs;

public ClientDao() throws Exception
{
con=DBConnectionFactory.getConnection();
System.out.println("Connection:"+con);
	}

	public boolean newClienttMaster(ClientBean pf) {
	
		boolean flag=false;
	

	String cname=pf.getClientName();
	String country=pf.getCountry();
	String cadd =pf.getClientAddress();
	String state=pf.getState();
	String Phone=pf.getPhone();
	String city=pf.getCity();
	String mobile=pf.getMobileNo();
	String email=pf.getEmail1();
	String email2=pf.getEmail2();
	String rperson=pf.getRperson();
	String rphone=pf.getRphone();
	String radd=pf.getAddress();
		
		try {
				pst= con.prepareStatement("insert into CLIENTMASTER1 values((select nvl(max(CLIENTID),1000)+1 from CLIENTMASTER1),?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1, cname);
		pst.setString(2,country);
		pst.setString(3, cadd);
		pst.setString(4, state);
		pst.setString(5, Phone);
		pst.setString(6, city);
		pst.setString(7, mobile);
		pst.setString(8, email);
		pst.setString(9, email2);
		pst.setString(10, rperson);
		pst.setString(11, rphone);
		pst.setString(12, radd);
		
		rs = pst.executeQuery();
		
				
		
		
		
		
		
	
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
	return flag;
	
	
	}
	public Vector<ClientBean> viewCM1(String path1) {
		 {

			Vector<ClientBean> packdetails = new Vector<ClientBean>();
			ClientBean pack = null;
			String path = "";
			try {

				pst3 = con.prepareStatement("select * from  CLIENTMASTER1");
				
				rs = pst3.executeQuery();
				System.out.println("ResultSet===>"+rs);
				while (rs.next()) {
					pack = new ClientBean();
					pack.setCid1(rs.getString(1));
					pack.setClientName(rs.getString(2));
					pack.setCountry(rs.getString(3));

					pack.setClientAddress(rs.getString(4));
					pack.setState(rs.getString(5));
					pack.setPhone(rs.getString(6));

					pack.setCity(rs.getString(7));
					pack.setEmail1(rs.getString(9));
					pack.setEmail2(rs.getString(10));
					pack.setRperson(rs.getString(11));
					pack.setRphone(rs.getString(12));
									
				
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
	public Vector<ClientBean> viewClient(String path1) {
		{

			Vector<ClientBean> packdetails = new Vector<ClientBean>();
			ClientBean pack = null;
			String path = "";
			try {

				pst1 = con.prepareStatement("select * from  CLIENTMASTER1 ");

				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					pack = new ClientBean();
					pack.setClientName(rs.getString(2));
					pack.setState(rs.getString(5));
					pack.setCity(rs.getString(7));
					pack.setPhone(rs.getString(6));
					pack.setEmail1(rs.getString(9));
					packdetails.add(pack);
				}
			} catch (SQLException e) {
				System.out.println(e);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(e);

				try {
					con.commit();
					
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

}

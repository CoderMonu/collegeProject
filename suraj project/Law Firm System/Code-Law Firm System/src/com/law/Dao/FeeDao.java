package com.law.Dao;
import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.nit.bean.FeeBean;
import com.nit.bean.MailBean;


public class FeeDao{
static Connection con;
PreparedStatement pst,pst3;
static PreparedStatement pst1;
static ResultSet rs;

public FeeDao() throws Exception
{
con=DBConnectionFactory.getConnection();
System.out.println("Connection:"+con);
	}

	public boolean fee(FeeBean pf) {
	
		boolean flag=false;
	

	String fcode=pf.getFeeCode();
	String fname=pf.getFeeName();
		
		try {
				pst= con.prepareStatement("insert into FEEMASTER values((select nvl(max(FID),1000)+1 from FEEMASTER),?,?)");
		pst.setString(1, fcode);
		pst.setString(2,fname);
		
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
	public Vector<FeeBean> viewFee(String path1) {
		 {

			Vector<FeeBean> packdetails = new Vector<FeeBean>();
			FeeBean pack = null;
			String path = "";
			try {

				pst3 = con.prepareStatement("select * from  FEEMASTER");
				
				rs = pst3.executeQuery();
				System.out.println("ResultSet===>"+rs);
				while (rs.next()) {
					pack = new FeeBean();
					pack.setFeeCode(rs.getString(1));
					pack.setFeeName(rs.getString(2));
														
				
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
	public Vector<FeeBean> viewFee1(String path1) {
		{

			Vector<FeeBean> packdetails = new Vector<FeeBean>();
			FeeBean pack = null;
			String path = "";
			try {

				pst1 = con.prepareStatement("select * from  FEEMASTER ");

				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					pack = new FeeBean();
					pack.setFeeCode(rs.getString(2));
					pack.setFeeName(rs.getString(3));
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

	public Vector<FeeBean> viewUserDetails1(String path1) {
		{

			Vector<FeeBean> packdetails = new Vector<FeeBean>();
			FeeBean pack = null;
			String path = "";
			try {

				pst1 = con
						.prepareStatement("select * from  FEEMASTER ");

				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					pack = new FeeBean();
					pack.setFeeCode(rs.getString(1));
					pack.setFeeName(rs.getString(2));
					
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
	
	public boolean mail(MailBean pf) {
		
		boolean flag=false;
	

	String fcode=pf.getReceipt();
	String fname=pf.getSubject();
	String mess=pf.getMessage();
	String att=pf.getAttached();
		
		try {
			
			File file5 = new File(att);
			FileInputStream fis5 = new FileInputStream(file5);

			
				pst= con.prepareStatement("insert into MAIL values(?,?,?,?)");
		pst.setString(1, fcode);
		pst.setString(2,fname);
		pst.setString(3,mess);
		pst.setBinaryStream(4, fis5, (int) file5.length());
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

		}	


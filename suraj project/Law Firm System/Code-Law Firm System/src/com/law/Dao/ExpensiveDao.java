package com.law.Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.nit.bean.ExpensiveBean;
import com.nit.bean.FeeBean;


public class ExpensiveDao{
static Connection con;
PreparedStatement pst,pst3;
static PreparedStatement pst1;
static ResultSet rs;

public ExpensiveDao() throws Exception
{
con=DBConnectionFactory.getConnection();
System.out.println("Connection:"+con);
	}

	public boolean fee(ExpensiveBean pf) {
	
		boolean flag=false;
	

	String fcode=pf.getFeeCode();
	String fname=pf.getFeeName();
		
		try {
				pst= con.prepareStatement("insert into EXPENSIVEMASTER values((select nvl(max(EID),1000)+1 from EXPENSIVEMASTER),?,?)");
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
	public Vector<ExpensiveBean> viewEx(String path1) {
		{

			Vector<ExpensiveBean> packdetails = new Vector<ExpensiveBean>();
			ExpensiveBean pack = null;
			String path = "";
			try {

				pst1 = con.prepareStatement("select * from  EXPENSIVEMASTER ");

				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					pack = new ExpensiveBean();
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

	public Vector<ExpensiveBean> viewUser(String path1) {
		{

			Vector<ExpensiveBean> packdetails = new Vector<ExpensiveBean>();
			ExpensiveBean pack = null;
			String path = "";
			try {

				pst1 = con
						.prepareStatement("select * from  EXPENSIVE ");

				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					pack = new ExpensiveBean();
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


}

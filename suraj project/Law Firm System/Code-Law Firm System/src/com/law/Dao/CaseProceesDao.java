package com.law.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.nit.bean.CaseBean;
import com.nit.bean.CaseProcedingBean;

public class CaseProceesDao {
	

		static Connection con;
		PreparedStatement pst, pst3;
		static PreparedStatement pst1;
		static ResultSet rs;

		public CaseProceesDao() throws Exception {
			con = DBConnectionFactory.getConnection();
			System.out.println("Connection:" + con);
		}
		public boolean caseProceeding(CaseProcedingBean pf) {

			boolean flag = false;

			String caseno = pf.getCaseno();
			String casename= pf.getCasename();
			String client= pf.getClient();
			String opposite = pf.getOpposiation();
			String heardate= pf.getHearingdate();
			String hearestage= pf.getHearingstage();
			String heardetail= pf.getHearingdetails();
			
			
			try {
				pst = con
						.prepareStatement("insert into caseproceedig values(?,?,?,?,?,?,?)");
				pst.setString(1, caseno);
				pst.setString(2, casename);
				pst.setString(3, client);
				pst.setString(4, opposite);
				pst.setString(5, heardate);
				pst.setString(6, hearestage);
				pst.setString(7, heardetail);
				
				rs = pst.executeQuery();

				while (rs.next())

				{

					System.out.println(rs.getString(1));

				}

			} catch (Exception e) {

			}
			return flag;

		}
		public Vector<CaseBean> searchCaseDetails(String firnname) {
			{

				Vector<CaseBean> packdetails = new Vector<CaseBean>();
				CaseBean pack = new CaseBean();
               
				String path = "";
				try {
					pst1 = con
							.prepareStatement("select *from  CASEDETAILS where CNO=?");
					pst1.setString(1, firnname);
										rs = pst1.executeQuery();
					System.out.println("ResultSet===>" + rs);
					while (rs.next()) {
						System.out.println("hello");
						pack = new CaseBean();
						pack.setDateOfBrief(rs.getString(8));
						pack.setCaseNo(rs.getString(10));
						pack.setCaseName(rs.getString(3));
						pack.setClientName(rs.getString(4));
						pack.setAddress1(rs.getString(5));
						pack.setFileNo(rs.getString(2));
						System.out.println("nagarjuna===>");
						pack.setOppositePartyName(rs.getString(13));
						
						packdetails.add(pack);
					}
				} catch (SQLException e) {
					System.out.println(e);
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println(e);

					try {
						con.rollback();
					} catch (Exception se) {
						se.printStackTrace();
						System.out.println(se);
					}
				} finally {
					try {
						if (con != null)
							con.close();
					} catch (Exception e) {
						System.out.println(e);
					}
				}
				return packdetails;

			}
		}
		public Vector<CaseProcedingBean> viewCasePr(String path1) {
			{

				Vector<CaseProcedingBean> packdetails = new Vector<CaseProcedingBean>();
				CaseProcedingBean pack = null;
				String path = "";
				try {

					pst1 = con.prepareStatement("select * from  CASEPROCEEDIG ");

					rs = pst1.executeQuery();
					System.out.println("ResultSet===>" + rs);
					while (rs.next()) {
						pack = new CaseProcedingBean();
						pack.setHearingdate(rs.getString(5));
						pack.setHearingstage(rs.getString(6));
						pack.setHearingdetails(rs.getString(7));
						
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

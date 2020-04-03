package com.law.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.nit.bean.CaseBean;
import com.nit.bean.CaseDairyBean;
import com.nit.bean.CaseExpenseBean;

public class ExpenseDao {
	

		static Connection con;
		PreparedStatement pst, pst3;
		static PreparedStatement pst1;
		static ResultSet rs;

		public ExpenseDao() throws Exception {
			con = DBConnectionFactory.getConnection();
			System.out.println("Connection:" + con);
		}
		public boolean caseDairy(CaseExpenseBean pf) {

			boolean flag = false;

			String caseno = pf.getExpenseNo();
			String casename= pf.getDate();
			String client= pf.getFileNo();
			String opposite = pf.getClient();
			String heardate= pf.getCaseNo();
			String hearestage= pf.getAddress();
			String heardetail= pf.getCaseName();

			String heares= pf.getExpenseHead();
			String hearde= pf.getType();

			String hearest= pf.getAmount();
			String heardet= pf.getAmountinwords();

			try {
				pst = con
						.prepareStatement("insert into EXPENSE values(?,?,?,?,?,?,?,?,?,?,?)");
				pst.setString(1, caseno);
				pst.setString(2, casename);
				pst.setString(3, client);
				pst.setString(4, opposite);
				pst.setString(5, heardate);
				pst.setString(6, hearestage);
				pst.setString(7, heardetail);
				pst.setString(8, heares);
				pst.setString(9, hearde);
				pst.setString(10, hearest);
				pst.setString(11, heardet);
				rs = pst.executeQuery();

				while (rs.next())

				{

					System.out.println(rs.getString(1));

				}

			} catch (Exception e) {

			}
			return flag;

		}
		public Vector<CaseExpenseBean> searchCaseDetails(String ctype) {
			{

				Vector<CaseExpenseBean> packdetails = new Vector<CaseExpenseBean>();
				CaseExpenseBean pack = new CaseExpenseBean();

				String path = "";
				try {
					pst1 = con
							.prepareStatement("select *from  EXPENSE where  FRILNO=?");
					pst1.setString(1, ctype);
					System.out.println();

					rs = pst1.executeQuery();
					System.out.println("ResultSet===>" + rs);
					while (rs.next()) {
						System.out.println("hello");
						pack = new CaseExpenseBean();
						pack.setExpenseNo(rs.getString(1));
						pack.setDate(rs.getString(2));
						pack.setCaseNo(rs.getString(5));
						pack.setCaseName(rs.getString(7));
						pack.setClient(rs.getString(4));
						pack.setFileNo(rs.getString(3));
						
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
			
			public Vector<CaseDairyBean> viewCasePr1(String path1) {
				{

					Vector<CaseDairyBean> packdetails = new Vector<CaseDairyBean>();
					CaseDairyBean pack = null;
					String path = "";
					try {

						pst1 = con.prepareStatement("select * from  CASEDAIRY ");

						rs = pst1.executeQuery();
						System.out.println("ResultSet===>" + rs);
						while (rs.next()) {
							pack = new CaseDairyBean();
							pack.setAppointmentDate(rs.getString(6));
							pack.setAppointmentTime(rs.getString(7));
							pack.setName1(rs.getString(8));
							pack.setPurpose1(rs.getString(9));
							
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
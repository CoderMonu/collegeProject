package com.law.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.nit.bean.CaseDairyBean;
import com.nit.bean.CaseProcedingBean;

public class CaseDairyDao {
	

		static Connection con;
		PreparedStatement pst, pst3;
		static PreparedStatement pst1;
		static ResultSet rs;

		public CaseDairyDao() throws Exception {
			con = DBConnectionFactory.getConnection();
			System.out.println("Connection:" + con);
		}
		public boolean caseDairy(CaseDairyBean pf) {

			boolean flag = false;

			String caseno = pf.getCaseNo();
			String casename= pf.getCaseName();
			String client= pf.getClient();
			String opposite = pf.getOpposie();
			String heardate= pf.getNextHeringDa();
			String hearestage= pf.getAppointmentDate();
			String heardetail= pf.getAppointmentTime();

			String heares= pf.getName1();
			String hearde= pf.getPurpose1();

			String hearest= pf.getCallDate();
			String heardet= pf.getCallTime();
			String hea= pf.getName2();
			String hear= pf.getPurpose2();

			try {
				pst = con
						.prepareStatement("insert into CASEDAIRY values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
				pst.setString(12, hea);
				pst.setString(13, hear);
				rs = pst.executeQuery();

				while (rs.next())

				{

					System.out.println(rs.getString(1));

				}

			} catch (Exception e) {

			}
			return flag;

		}
		public Vector<CaseDairyBean> viewCasePr(String path1) {
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
						pack.setCaseNo(rs.getString(1));
						pack.setCaseName(rs.getString(2));
						pack.setClient(rs.getString(3));
						pack.setOpposie(rs.getString(4));
						pack.setNextHeringDa(rs.getString(5));
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
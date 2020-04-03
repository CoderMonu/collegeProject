package com.law.Dao;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.nit.bean.CaseBean;
import com.nit.bean.MoneyBean;

public class CaseDao {

	static Connection con;
	PreparedStatement pst, pst3;
	static PreparedStatement pst1;
	static ResultSet rs;

	public CaseDao() throws Exception {
		con = DBConnectionFactory.getConnection();
		System.out.println("Connection:" + con);
	}

	public boolean newCase(CaseBean pf) {

		boolean flag = false;

		String cname = pf.getCaseType();
		String sname = pf.getFileNo();
		String sadd = pf.getCaseName();
		String cname1 = pf.getClientName();
		String add1 = pf.getAddress1();
		String ph = pf.getPhone1();
		String courtn = pf.getCortName();
		String dfb = pf.getDateOfBrief();
		String df = pf.getDateOfFilling();
		String cno = pf.getCaseNo();
		String sad = pf.getSrAdvocate();
		String jad = pf.getJrAdvocate();
		String oparty = pf.getOppositePartyName();
		String add = pf.getAddress2();
		String ophone = pf.getPhone2();
		String oad = pf.getOppositeAdvacteName();
		String oadd = pf.getAddress3();
		String oophone = pf.getPhone3();
		String note = pf.getNote();
		String yfile = pf.getAttachFile();

		try {

			File file5 = new File(yfile);
			FileInputStream fis5 = new FileInputStream(file5);

			pst = con
					.prepareStatement("insert into CASEDETAILS values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, cname);
			pst.setString(2, sname);
			pst.setString(3, sadd);
			pst.setString(4, cname1);
			pst.setString(5, add1);
			pst.setString(6, ph);
			pst.setString(7, courtn);
			pst.setString(8, dfb);
			pst.setString(9, df);
			pst.setString(10, cno);
			pst.setString(11, sad);
			pst.setString(12, jad);
			pst.setString(13, oparty);
			pst.setString(14, add);
			pst.setString(15, ophone);
			pst.setString(16, oad);
			pst.setString(17, oadd);
			pst.setString(18, oophone);
			pst.setString(19, note);
			pst.setBinaryStream(20, fis5, (int) file5.length());

			int i = pst.executeUpdate();
			if (i == 1) {
				flag = true;
			} else {
				flag = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}

	public Vector<CaseBean> searchCaseDetails(String ctype, String fno,
			String casename, String clientna, String courtN, String cseno,
			String advo) {
		{

			Vector<CaseBean> packdetails = new Vector<CaseBean>();
			CaseBean pack = new CaseBean();

			String path = "";
			try {
				pst1 = con
						.prepareStatement("select *from  CASEDETAILS where CASETYPE=? or FILENO=? or CNAME=? or CLNAME=? or COURTNAME=? or CNO=? or SRADV=?");
				pst1.setString(1, ctype);
				pst1.setString(2, fno);
				pst1.setString(3, casename);
				pst1.setString(4, clientna);
				pst1.setString(5, courtN);
				pst1.setString(6, cseno);
				pst1.setString(7, advo);
				System.out.println();

				rs = pst1.executeQuery();
				System.out.println("ResultSet===>" + rs);
				while (rs.next()) {
					System.out.println("hello");
					pack = new CaseBean();
					pack.setFileNo(rs.getString(2));
					pack.setCaseName(rs.getString(3));
					pack.setClientName(rs.getString(4));
					pack.setCortName(rs.getString(7));
					pack.setCaseNo(rs.getString(10));
					pack.setSrAdvocate(rs.getString(11));
					pack.setOppositePartyName(rs.getString(13));
					pack.setOppositeAdvacteName(rs.getString(16));

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
	public boolean AddMoney(MoneyBean pf) {

		boolean flag = false;

		String cname = pf.getReceiptNo();
		System.out.println("+++++++"+cname);
		String sname = pf.getDate();
		String sadd = pf.getFileno();
		System.out.println("=============>"+sadd);
		String cname1 = pf.getClient();
		String add1 = pf.getCaseno();
		String ph = pf.getAddress();
		String courtn = pf.getCasename();
		String dfb = pf.getPaymenttype();
		System.out.println("==========>"+dfb);
		String df = pf.getDraftNo();
		System.out.println("------------->"+df);
		String cbank=pf.getReceiptAmount() ;
		String cno = pf.getNote();
		String sad = pf.getDraftDate();
		String jad = pf.getBankname();
		String oparty = pf.getDraftAmount();
		String add = pf.getAwords();
		try {
 		pst = con
					.prepareStatement("insert into payment values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, cname);
			pst.setString(2, sname);
			pst.setString(3, sadd);
			pst.setString(4, cname1);
			pst.setString(5, add1);
			pst.setString(6, ph);
			pst.setString(7, courtn);
			pst.setString(8, dfb);
			
			System.out.println("radio buttion"+dfb);
			pst.setString(9, df);
			pst.setString(10, cbank);
			pst.setString(11, cno);
			pst.setString(12, sad);
			pst.setString(13,jad);
			pst.setString(14,oparty);
			pst.setString(15,add);
						int i = pst.executeUpdate();
			if (i == 1) {
				flag = true;
			} else {
				flag = false;
			}
	
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	
	}
	
	public boolean AddFinalMoney(MoneyBean pf) {

		boolean flag = false;

		String cname = pf.getBillNo();
		String sname = pf.getBillDate();
		String sadd = pf.getFileno();
		String cname1 = pf.getClient();
		String add1 = pf.getCaseno();
		String ph = pf.getAddress();
		String courtn = pf.getCasename();
		String dfb = pf.getCaseFee();
		String df = pf.getCourtFee();
		String cbank=pf.getExpensehead();
		String cno = pf.getAmount();
		String dtype=pf.getPaymenttype();
		String dfno=pf.getDraftNo();
		String sad = pf.getDraftDate();
		String jad = pf.getBankname();
		String oparty = pf.getDraftAmount();
		String add = pf.getPaidAmount();
		String  note=pf.getNote();
		String totalbill=pf.getTotalBillAmount();
		String advanced=pf.getAdvancedPaid();
		String DueBillAmount=pf.getDueBillAmount();
		String words=pf.getAwords();
		
		try {
 		pst = con
					.prepareStatement("insert into finalpayment values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, cname);
			pst.setString(2, sname);
			pst.setString(3, sadd);
			pst.setString(4, cname1);
			pst.setString(5, add1);
			pst.setString(6, ph);
			pst.setString(7, courtn);
			pst.setString(8, dfb);
			
			System.out.println("radio buttion"+dfb);
			pst.setString(9, df);
			pst.setString(10, cbank);
			pst.setString(11, cno);
			pst.setString(12, dtype);
			pst.setString(13,dfno);
			pst.setString(14,sad);
			pst.setString(15,jad);
			pst.setString(16, oparty);
			pst.setString(17, add);
			pst.setString(18, note);
			pst.setString(19, totalbill);
			pst.setString(20, advanced);
			pst.setString(21, DueBillAmount);
			pst.setString(22, words);
			
						int i = pst.executeUpdate();
			if (i == 1) {
				flag = true;
			} else {
				flag = false;
			}
	
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	
	}

}

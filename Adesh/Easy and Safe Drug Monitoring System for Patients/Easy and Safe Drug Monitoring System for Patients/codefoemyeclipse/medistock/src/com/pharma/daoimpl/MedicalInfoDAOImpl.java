package com.pharma.daoimpl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import com.pharma.bean.MedicalInfoTo;
import com.pharma.bean.ProfileTo;
import com.pharma.daoi.MedicalInfoDAOI;
import com.pharma.dbutil.DBConnectionFactory;
import com.pharma.dbutil.SqlConstants;
import com.pharma.exceptions.ConnectionException;

import com.pharma.util.DateWrapper;
import com.pharma.util.LoggerManager;

public class MedicalInfoDAOImpl implements MedicalInfoDAOI {
	public Connection con;
	private boolean flag;
	public PreparedStatement pstmt;
	public ResultSet rs;
	public Statement stmt;

	public void closeConnection() {
		try {

			if (pstmt != null)
				pstmt.close();

			if (con != null)
				con.close();
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	}

	/**
	 * Adding Categories
	 */
	public boolean addCategory(MedicalInfoTo mto) throws ConnectionException,
			FileNotFoundException {
		flag = true;
		try {

			con = DBConnectionFactory.getConnection();
			String categoryname = mto.getCategoryname();
			String categoryphoto = mto.getCategoryphoto();
			System.out.println("File=" + categoryphoto);
			File f = new File(categoryphoto);
			FileInputStream fis = new FileInputStream(f);
			System.out.println("fole=" + f.length());
			int companyid = mto.getCompanyid();
			System.out.println(companyid);
			PreparedStatement pstmt = con
					.prepareStatement(SqlConstants._INSERT_CATEGORY);
			pstmt.setString(1, categoryname);
			System.out.println(categoryname);
			pstmt.setBinaryStream(2, fis, (int) f.length());
			pstmt.setInt(3, companyid);
			System.out.println(",..............." + companyid);
			int insert = pstmt.executeUpdate();
			if (insert > 0) {
				con.commit();
			} else {
				flag = false;
				con.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e);
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
			throw new ConnectionException("Server Busy Please try Later");
		} finally {
			closeConnection();
		}
		return flag;

	}

	/**
	 * Adding Company action
	 */
	public boolean addCompany(MedicalInfoTo mto) throws ConnectionException {
		flag = true;
		try {

			con = DBConnectionFactory.getConnection();

			String companyname = mto.getCompanyname();

			String address = mto.getAddress();
			String phno = mto.getPhno();
			String email = mto.getEmail();
			PreparedStatement pstmt = con
					.prepareStatement(SqlConstants._INSERT_COMPANY);
			pstmt.setString(1, companyname);
			System.out.println(companyname);
			pstmt.setString(2, address);
			pstmt.setString(3, phno);
			pstmt.setString(4, email);
			int insert = pstmt.executeUpdate();
			if (insert > 0) {
				con.commit();
			} else {
				flag = false;
				con.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e);
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
			throw new ConnectionException("Server Busy Please try Later");
		} finally {
			closeConnection();
		}
		return flag;
	}

	/**
	 * Adding medicines Action
	 */
	public boolean addmedicine(MedicalInfoTo mto) throws ConnectionException {
		flag = true;
		try {

			con = DBConnectionFactory.getConnection();
			String purpose = mto.getPurpose();
			String medicinename = mto.getMedicinename();
			int categoryid = mto.getCategoryid();
			int companyid = mto.getCompanyid();
			String expirydate = DateWrapper.parseDate(mto.getExpirydate());
			String timeperiod = mto.getTimeperiod();

			PreparedStatement pstmt = con
					.prepareStatement(SqlConstants._INSERT_MEDICINE);
			pstmt.setInt(1, categoryid);
			pstmt.setString(2, medicinename);
			System.out.println(medicinename);
			pstmt.setString(3, expirydate);
			pstmt.setInt(4, companyid);
			pstmt.setString(5, timeperiod);
			pstmt.setString(6, purpose);

			int insert = pstmt.executeUpdate();
			if (insert > 0) {
				con.commit();
			} else {
				flag = false;
				con.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e);
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
			throw new ConnectionException("Server Busy Please try Later");
		} finally {
			closeConnection();
		}
		return flag;
	}

	/**
	 * View Company Details Action
	 */
	public Vector<MedicalInfoTo> viewComanyDetails() throws ConnectionException {
		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();

			pstmt = con.prepareStatement(SqlConstants._VIEW_COMPANY_DETAILS);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mto = new MedicalInfoTo();
				mto.setCompanyid(rs.getInt(1));
				System.out.println("========id>>>>>" + rs.getInt(1));
				mto.setCompanyname(rs.getString(2));

				vmto.add(mto);
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
		return vmto;
	}

	/**
	 * View Category Details Action
	 */
	public Vector<MedicalInfoTo> viewCategoryDetails()
			throws ConnectionException {
		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();

			pstmt = con.prepareStatement(SqlConstants._VIEW_CATEGORY_DETAILS);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mto = new MedicalInfoTo();
				mto.setCategoryid(rs.getInt(1));
				System.out.println("========id>>>>>" + rs.getInt(1));
				mto.setCategoryname(rs.getString(2));

				vmto.add(mto);
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
		return vmto;
	}

	/**
	 * View Companies Action
	 */
	public Vector<MedicalInfoTo> viewCompaniesDetails(int companyid)
			throws ConnectionException {
		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();

			pstmt = con.prepareStatement(SqlConstants._VIEW_COMPANIES_DETAILS);
			pstmt.setInt(1, companyid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mto = new MedicalInfoTo();
				mto.setCompanyid(rs.getInt(1));
				System.out.println("========id>>>>>" + rs.getInt(1));
				mto.setCompanyname(rs.getString(2));
				mto.setCategoryid(rs.getInt(3));
				mto.setCategoryname(rs.getString(4));
				vmto.add(mto);
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
		return vmto;
	}

	/**
	 * View Company Details Action
	 */
	public Vector<MedicalInfoTo> viewCompanyDetails()
			throws ConnectionException {
		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();

			pstmt = con.prepareStatement(SqlConstants._VIEW_COMPANY_DETAILS);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mto = new MedicalInfoTo();
				mto.setCompanyid(rs.getInt(1));
				System.out.println("========id>>>>>" + rs.getInt(1));
				mto.setCompanyname(rs.getString(2));

				vmto.add(mto);
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
		return vmto;
	}

	/**
	 * View Medicines Implementation
	 */
	public Vector<MedicalInfoTo> viewMedicines(String medicinename)
			throws ConnectionException {
		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._VIEW_MEDICINES);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mto = new MedicalInfoTo();
				mto.setProductid(rs.getInt(1));
				mto.setMedicinename(rs.getString(2));
				mto.setManufacturedate(rs.getString(3));
				mto.setExpirydate(rs.getString(4));
				mto.setTimeperiod(rs.getString(5));
				mto.setPurpose(rs.getString(6));
				mto.setPrice(rs.getInt(7));
				mto.setAvail_quantity(rs.getInt(8));
				vmto.add(mto);
			}
		} catch (SQLException e) {
			System.out.println(e);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			try {
				con.rollback();
			} catch (SQLException se) {

				throw new ConnectionException(
						"Server is Busy Please try Later ");
			}
		} finally {
			closeConnection();
		}
		return vmto;
	}

	/**
	 * Delete medicine(non-Javadoc)
	 * 
	 * @see com.pharma.daoi.MedicineDAOI#deletemedicine(int)
	 *      DeleteMedicineAction Class implements Deleting the medicine from
	 *      database successfully
	 * @return flag which returns the flag value
	 */
	public boolean deleteMedicine(int productid) throws ConnectionException {
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._DELETE_MEDICINE);
			pstmt.setInt(1, productid);
			int i = pstmt.executeUpdate();
			if (i > 0) {
				flag = true;
			}
		} catch (SQLException se) {
			LoggerManager.writeLogWarning(se);
		} catch (Exception e) {
			LoggerManager.writeLogWarning(e);
		} finally {
			try {
				con.close();
			} catch (SQLException se) {
				LoggerManager.writeLogWarning(se);
			} finally {
				closeConnection();
			}
		}
		return flag;
	}

	/**
	 * view medicine update details
	 */
	public Vector<MedicalInfoTo> viewMedicineupdate(int pid)
			throws ConnectionException {
		Vector<MedicalInfoTo> vmto = null;

		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._VIEW_MEDICINES_UPDATE);

			pstmt.setInt(1, pid);
			rs = pstmt.executeQuery();

			vmto = new Vector<MedicalInfoTo>();

			while (rs.next()) {

				MedicalInfoTo mto = new MedicalInfoTo();

				mto.setProductid(rs.getInt(1));
				mto.setMedicinename(rs.getString(2));
				mto.setManufacturedate(rs.getString(3));
				mto.setExpirydate(rs.getString(4));
				mto.setTimeperiod(rs.getString(5));
				mto.setPurpose(rs.getString(6));
				vmto.add(mto);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return vmto;
	}

	/**
	 * update medicines details
	 */
	public boolean updateMedicines(MedicalInfoTo mto)
			throws ConnectionException {
		boolean flag = true;
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._UPDATE_MEDICINES);

			pstmt.setInt(1, mto.getProductid());
			pstmt.setString(2, mto.getMedicinename());
			pstmt.setString(3, mto.getManufacturedate());
			pstmt.setString(4, mto.getExpirydate());
			pstmt.setString(5, mto.getTimeperiod());
			pstmt.setString(6, mto.getPurpose());

			int update = pstmt.executeUpdate();

			if (update > 0) {

				con.commit();
			} else {
				flag = false;
				con.rollback();
			}

		}

		catch (SQLException e) {
			e.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		finally {
			try {
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}
		return flag;
	}

	/**
	 * View Companies Implementation
	 */
	public Vector<MedicalInfoTo> viewCompanies(String companyname)
			throws ConnectionException {
		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._VIEW_COMPANY);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mto = new MedicalInfoTo();
				mto.setCompanyid(rs.getInt(1));
				mto.setCompanyname(rs.getString(2));
				mto.setAddress(rs.getString(3));
				mto.setPhno(rs.getString(4));
				mto.setEmail(rs.getString(5));
				vmto.add(mto);
			}
		} catch (SQLException e) {
			System.out.println(e);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			try {
				con.rollback();
			} catch (SQLException se) {

				throw new ConnectionException(
						"Server is Busy Please try Later ");
			}
		} finally {
			closeConnection();
		}
		return vmto;
	}

	/**
	 * Delete Company(non-Javadoc)
	 * 
	 * @see com.pharma.daoi.MedicineDAOI#deletemedicine(int)
	 *      DeleteMedicineAction Class implements Deleting the medicine from
	 *      database successfully
	 * @return flag which returns the flag value
	 */
	public boolean deleteCompany(int cid) throws ConnectionException {
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._DELETE_COMPANY);
			pstmt.setInt(1, cid);
			int i = pstmt.executeUpdate();
			if (i > 0) {
				flag = true;
			}
		} catch (SQLException se) {
			LoggerManager.writeLogWarning(se);
		} catch (Exception e) {
			LoggerManager.writeLogWarning(e);
		} finally {
			try {
				con.close();
			} catch (SQLException se) {
				LoggerManager.writeLogWarning(se);
			} finally {
				closeConnection();
			}
		}
		return flag;
	}

	/**
	 * View update company details
	 */
	public Vector<MedicalInfoTo> viewCompanyupdate(int cid)
			throws ConnectionException {
		Vector<MedicalInfoTo> vmto = null;

		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._VIEW_COMPANY_UPDATE);

			pstmt.setInt(1, cid);
			rs = pstmt.executeQuery();

			vmto = new Vector<MedicalInfoTo>();

			while (rs.next()) {

				MedicalInfoTo mto = new MedicalInfoTo();

				mto = new MedicalInfoTo();
				mto.setCompanyid(rs.getInt(1));
				mto.setCompanyname(rs.getString(2));
				mto.setAddress(rs.getString(3));
				mto.setPhno(rs.getString(4));
				mto.setEmail(rs.getString(5));
				vmto.add(mto);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return vmto;
	}

	/**
	 * Update company details
	 */
	public boolean updateCompany(MedicalInfoTo mto) throws ConnectionException {
		boolean flag = true;
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._UPDATE_COMPANY);

			pstmt.setInt(1, mto.getCompanyid());
			pstmt.setString(2, mto.getCompanyname());
			pstmt.setString(3, mto.getAddress());
			pstmt.setString(4, mto.getPhno());
			pstmt.setString(5, mto.getEmail());
			int update = pstmt.executeUpdate();

			if (update > 0) {

				con.commit();
			} else {
				flag = false;
				con.rollback();
			}

		}

		catch (SQLException e) {
			e.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		finally {
			try {
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}
		return flag;
	}

	/**
	 * Delete Category Action
	 */
	public boolean deleteCategory(int categoryid) throws ConnectionException {
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._DELETE_CATEGORY);
			pstmt.setInt(1, categoryid);
			int i = pstmt.executeUpdate();
			if (i > 0) {
				flag = true;
			}
		} catch (SQLException se) {
			LoggerManager.writeLogWarning(se);
		} catch (Exception e) {
			LoggerManager.writeLogWarning(e);
		} finally {
			try {
				con.close();
			} catch (SQLException se) {
				LoggerManager.writeLogWarning(se);
			} finally {
				closeConnection();
			}
		}
		return flag;
	}

	/**
	 * Update Category Action
	 * 
	 * @throws FileNotFoundException
	 */
	public boolean updateCategory(MedicalInfoTo mto)
			throws ConnectionException, FileNotFoundException {
		boolean flag = true;
		try {
			String categoryphoto = mto.getCategoryphoto();
			System.out.println("photo" + categoryphoto);
			if (categoryphoto.equals("")) {
				categoryphoto = mto.getCategoryphoto();
			}
			con = DBConnectionFactory.getConnection();
			System.out.println("photo=" + categoryphoto);
			File f = new File(categoryphoto);
			FileInputStream fis = new FileInputStream(f);
			System.out.println("fole=" + f.length());
			pstmt = con.prepareStatement(SqlConstants._UPDATE_CATEGORY);

			pstmt.setInt(1, mto.getCategoryid());
			pstmt.setString(2, mto.getCategoryname());
			pstmt.setBinaryStream(3, fis, (int) f.length());
			int update = pstmt.executeUpdate();

			if (update > 0) {

				con.commit();
			} else {
				flag = false;
				con.rollback();
			}

		}

		catch (SQLException e) {
			e.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}

		finally {
			try {
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}
		return flag;
	}

	/**
	 * View Categories Action
	 */
	public Vector<MedicalInfoTo> viewCategories(String categpryname,
			String realpath) throws ConnectionException {
		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();
			String path = realpath;
			pstmt = con.prepareStatement(SqlConstants._VIEW_CATEGORY);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				path = realpath;
				mto = new MedicalInfoTo();
				mto.setCategoryid(rs.getInt(1));
				mto.setCategoryname(rs.getString(2));
				Blob b = rs.getBlob(3);
				byte b1[] = b.getBytes(1, (int) b.length());
				path = path + "/" + rs.getInt(1) + ".jpg";
				System.out.println("path  :@@@@@@@@@" + path);
				OutputStream fout = new FileOutputStream(path);
				fout.write(b1);
				mto.setCategoryphoto(path);
				vmto.add(mto);
			}
		} catch (SQLException e) {
			System.out.println(e);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			try {
				con.rollback();
			} catch (SQLException se) {

				throw new ConnectionException(
						"Server is Busy Please try Later ");
			}
		} finally {
			closeConnection();
		}
		return vmto;
	}

	/**
	 * View Update Category Action
	 * 
	 * @throws IOException
	 */
	public Vector<MedicalInfoTo> viewCategoryupdate(int categoryid,
			String realpath) throws ConnectionException, IOException {
		Vector<MedicalInfoTo> vmto = null;

		try {
			con = DBConnectionFactory.getConnection();
			String path1 = realpath;
			pstmt = con.prepareStatement(SqlConstants._VIEW_CATEGORY_UPDATE);

			pstmt.setInt(1, categoryid);
			System.out.println("ccccccccccccccc>>>>>>>>>" + categoryid);
			rs = pstmt.executeQuery();

			vmto = new Vector<MedicalInfoTo>();

			while (rs.next()) {
				path1 = realpath;
				MedicalInfoTo mto = new MedicalInfoTo();

				mto = new MedicalInfoTo();
				mto.setCategoryid(rs.getInt(1));
				mto.setCategoryname(rs.getString(2));
				Blob b = rs.getBlob(3);
				byte b1[] = b.getBytes(1, (int) b.length());
				path1 = path1 + "/" + rs.getInt(1) + ".jpg";
				System.out.println("path  :@@@@@@@@@" + path1);
				OutputStream fout = new FileOutputStream(path1);
				fout.write(b1);
				mto.setCategoryphoto(path1);
				vmto.add(mto);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return vmto;
	}

	public Vector<MedicalInfoTo> viewCategoryNames(String medicinename)
			throws ConnectionException {

		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();
			PreparedStatement pstmt = con
					.prepareStatement(SqlConstants._VIEW_CATEGORY_NAME);
			// pst.setString(1, categoryname);
			// System.out.println(categoryname);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mto = new MedicalInfoTo();
				mto.setProductid(rs.getInt(1));
				mto.setMedicinename(rs.getString(2));
				mto.setManufacturedate(rs.getString(3));
				mto.setExpirydate(rs.getString(4));
				mto.setTimeperiod(rs.getString(5));
				mto.setPurpose(rs.getString(6));
				mto.setAvail_quantity(rs.getInt(7));
				mto.setPrice(rs.getInt(8));
				mto.setUserid(rs.getInt(9));
				vmto.add(mto);
			}

		} catch (SQLException e) {
			System.out.println(e);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			try {
				con.rollback();
			} catch (SQLException se) {

				throw new ConnectionException(
						"Server is Busy Please try Later ");
			}
		} finally {
			closeConnection();
		}
		return vmto;
	}

	public boolean addCustomerOrder(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException {
		boolean flag = false;
		try {
			con = DBConnectionFactory.getConnection();
			@SuppressWarnings("unused")
			int avail = mto.getAvailabletablets();
			int productid = mto.getProductid();
			int userid = mto.getUserid();
			System.out.println(userid);
			String customerloginid = mto.getLoginid();
			int req = mto.getOrderquantity();
			int price = mto.getPrice();
			int total = (req * price);
			System.out.println(total + "......" + req + "price" + price);
			pstmt = con
					.prepareStatement("INSERT INTO MEDICINE_ORDERS VALUES((select nvl(max(orderid),0)+1 from MEDICINE_ORDERS),?,?,?,sysdate,?,?)");
			pstmt.setInt(1, userid);
			System.out.println(userid);
			pstmt.setInt(2, productid);
			pstmt.setInt(3, req);
			pstmt.setInt(4, total);
			pstmt.setString(5, customerloginid);
			int i = pstmt.executeUpdate();
			if (i > 0) {

				stmt = con.createStatement();
				int j = stmt
						.executeUpdate("update MEDICINECOST_ALLOWER set avail_quantity=avail_quantity-"
								+ req
								+ " where productid="
								+ productid
								+ " and userid=" + userid);
				if (j > 0) {
					flag = true;
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public Vector<ProfileTo> addCustomerTransaction(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException {
		Vector<ProfileTo> vpto = new Vector<ProfileTo>();
		// boolean flag=true;
		try {
			con = DBConnectionFactory.getConnection();
			System.out.println("in dao....");
			int userid = mto.getUserid();
			String customerloginid = mto.getLoginid();
			String transaction = mto.getTransaction();
			pstmt = con
					.prepareStatement("INSERT INTO payment VALUES((select nvl(max(paymentid),0)+1 from payment),?,sysdate,?,(select userid from userdetails where loginid=?),(select max(orderid) from MEDICINE_ORDERS))");
			pstmt.setInt(1, userid);
			pstmt.setString(2, transaction);
			pstmt.setString(3, customerloginid);

			int i = pstmt.executeUpdate();
			if (i > 0) {
				flag = true;
				stmt = con.createStatement();
				rs = stmt
						.executeQuery("select u.firstname,u.lastname,a.street,a.state,a.city,a.houseno from userdetails u,addresses a where u.userid="
								+ userid + " and a.useridref=" + userid);
				System.out.println("..........1" + rs);
				if (rs.next()) {

					ProfileTo rb = new ProfileTo();
					rb.setFirstName(rs.getString(1));
					rb.setLastName(rs.getString(2));
					rb.setStreet(rs.getString(3));
					rb.setState(rs.getString(4));
					rb.setCity(rs.getString(5));
					rb.setHouseNo(rs.getString(6));
					vpto.add(rb);
				}

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}
		return vpto;
	}

	/**
	 * Adding Product details
	 * 
	 * @throws ConnectionException
	 */
	public boolean addProductQuantity(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException {
		boolean flag = false;
		try {
			con = DBConnectionFactory.getConnection();
			int quantity = mto.getQuantity();
			int price = mto.getPrice();
			int productid = mto.getProductid();
			String loginid = mto.getLoginid();
			System.out.println("Loginid" + loginid);
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select nvl(max(AVAIL_QUANTITY),0)+1 from MEDICINECOST_ALLOWER where productid="
							+ productid
							+ " and userid=(select userid from userdetails where loginid='"
							+ loginid + "')");
			if (rs.next()) {
				int qua = rs.getInt(1);
				if (qua == 1) {
					pstmt = con
							.prepareStatement("INSERT INTO MEDICINECOST_ALLOWER VALUES((select nvl(max(PRODUCTID_ALLOWER),0)+1 from MEDICINECOST_ALLOWER),?,(select userid from userdetails where loginid=?),?,?,?)");
					pstmt.setInt(1, productid);
					pstmt.setString(2, loginid);
					pstmt.setInt(3, quantity);
					pstmt.setInt(4, quantity);
					pstmt.setInt(5, price);

				} else {
					quantity += qua - 1;

					pstmt = con
							.prepareStatement("update MEDICINECOST_ALLOWER set TOTAL_QUANITITY=?,AVAIL_QUANTITY=?,price=? where productid=?");

					pstmt.setInt(1, quantity);
					pstmt.setInt(2, quantity);
					pstmt.setInt(3, price);
					pstmt.setInt(4, productid);
				}

			}
			int i = pstmt.executeUpdate();
			if (i > 0)
				flag = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	/**
	 * View Products
	 */
	public Vector<MedicalInfoTo> viewMedicineDetails()
			throws ConnectionException {
		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();

			pstmt = con.prepareStatement(SqlConstants._VIEW_PRODUCT_DETAILS);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mto = new MedicalInfoTo();
				mto.setProductid(rs.getInt(1));
				System.out.println("========id>>>>>" + rs.getInt(1));
				mto.setMedicinename(rs.getString(2));

				vmto.add(mto);
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
		return vmto;
	}
    /**
     * View Payments
     */
	public Vector<MedicalInfoTo> viewpayments() throws ConnectionException {
		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._VIEW_BILLS);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mto = new MedicalInfoTo();
				mto.setMedicinename(rs.getString(1));
				mto.setPrice(rs.getInt(2));
				mto.setOrderquantity(rs.getInt(3));
				mto.setOrder_date(rs.getString(4));
				mto.setPaymentmode(rs.getString(5));
				mto.setPay_date(rs.getString(6));
				mto.setTotalprice(rs.getInt(7));
				mto.setLoginid(rs.getString(8));
				vmto.add(mto);
			}
		} catch (SQLException e) {
			System.out.println(e);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			try {
				con.rollback();
			} catch (SQLException se) {

				throw new ConnectionException(
						"Server is Busy Please try Later ");
			}
		} finally {
			closeConnection();
		}
		return vmto;
	}

	public Vector<MedicalInfoTo> viewuserpayments(String loginid)
			throws ConnectionException {
		Vector<MedicalInfoTo> vmto = new Vector<MedicalInfoTo>();
		MedicalInfoTo mto = null;
		try {
			con = DBConnectionFactory.getConnection();
			pstmt = con.prepareStatement(SqlConstants._VIEW_USER_BILLS);
			pstmt.setString(1, loginid);
			System.out.println(loginid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mto = new MedicalInfoTo();
				mto.setMedicinename(rs.getString(1));
				mto.setPrice(rs.getInt(2));
				mto.setOrderquantity(rs.getInt(3));
				mto.setOrder_date(rs.getString(4));
				mto.setPaymentmode(rs.getString(5));
				mto.setPay_date(rs.getString(6));
				mto.setTotalprice(rs.getInt(7));
				mto.setLoginid(rs.getString(8));
				vmto.add(mto);
			}
		} catch (SQLException e) {
			System.out.println(e);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
			try {
				con.rollback();
			} catch (SQLException se) {

				throw new ConnectionException(
						"Server is Busy Please try Later ");
			}
		} finally {
			closeConnection();
		}
		return vmto;
	}

	public Vector<MedicalInfoTo> Viewprintbill(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException {
		Vector<MedicalInfoTo> vpto = new Vector<MedicalInfoTo>();
		// boolean flag=true;
		try {
			con = DBConnectionFactory.getConnection();
			System.out.println("in dao....");
			int userid = mto.getUserid();
			String customerloginid = mto.getLoginid();
			String transaction = mto.getTransaction();
			pstmt = con
					.prepareStatement("INSERT INTO payment VALUES((select nvl(max(paymentid),0)+1 from payment),?,sysdate,?,(select userid from userdetails where loginid=?),(select max(orderid) from MEDICINE_ORDERS))");
			pstmt.setInt(1, userid);
			pstmt.setString(2, transaction);
			pstmt.setString(3, customerloginid);

			int i = pstmt.executeUpdate();
			if (i > 0) {
				flag = true;
				stmt = con.createStatement();
				rs = stmt
						.executeQuery("select u.firstname,u.lastname,a.phno,p.madicinename,p.expirydate,m.price,mo.order_quantity,mo.totalprice from userdetails u,addresses a,product p,medicinecost_allower m,medicine_orders mo where u.loginid=mo.loginid and logintype='customer'");
				System.out.println("..........1" + rs);
				if (rs.next()) {

					MedicalInfoTo rb = new MedicalInfoTo();
					rb.setFirstName(rs.getString(1));
					rb.setLastName(rs.getString(2));
					rb.setPhoneNo(rs.getString(3));
					rb.setMedicinename(rs.getString(4));
					rb.setExpirydate(rs.getString(5));
					rb.setPrice(rs.getInt(6));
					rb.setOrderquantity(rs.getInt(7));
					rb.setTotalprice(rs.getInt(9));
					vpto.add(rb);
				}

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}
		return vpto;
	}
}

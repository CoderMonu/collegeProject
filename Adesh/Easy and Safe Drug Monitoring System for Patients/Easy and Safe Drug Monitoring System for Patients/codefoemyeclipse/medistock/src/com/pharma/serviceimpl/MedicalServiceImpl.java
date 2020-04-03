package com.pharma.serviceimpl;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Vector;

import com.pharma.bean.MedicalInfoTo;
import com.pharma.bean.ProfileTo;
import com.pharma.daoi.MedicalInfoDAOI;
import com.pharma.daoimpl.MedicalInfoDAOImpl;
import com.pharma.exceptions.ConnectionException;
import com.pharma.exceptions.DataNotFoundException;
import com.pharma.exceptions.LoginException;

import com.pharma.servicei.MedicalInfoServiceI;

public class MedicalServiceImpl implements MedicalInfoServiceI {
	MedicalInfoDAOI mdao = new MedicalInfoDAOImpl();
	boolean flag = false;
	Vector<MedicalInfoTo> vmto = null;
	Vector<ProfileTo> vpto = null;

	public boolean addCategory(MedicalInfoTo mto) throws ConnectionException,
			FileNotFoundException {

		return mdao.addCategory(mto);
	}

	public boolean addCompany(MedicalInfoTo mto) throws ConnectionException {
		return mdao.addCompany(mto);
	}

	public boolean addmedicine(MedicalInfoTo mto) throws ConnectionException {
		return mdao.addmedicine(mto);
	}

	public Vector<MedicalInfoTo> viewComanyDetails() throws ConnectionException {

		return mdao.viewComanyDetails();
	}

	public Vector<MedicalInfoTo> viewCategoryDetails()
			throws ConnectionException {
		return mdao.viewCategoryDetails();
	}

	public Vector<MedicalInfoTo> viewCompaniesDetails(int companyid)
			throws ConnectionException {
		return mdao.viewCompaniesDetails(companyid);
	}

	public Vector<MedicalInfoTo> viewCompanyDetails()
			throws ConnectionException {

		return mdao.viewCompanyDetails();
	}

	public boolean deleteMedicine(int productid) throws ConnectionException {

		return mdao.deleteMedicine(productid);
	}

	public boolean updateMedicines(MedicalInfoTo mto)
			throws ConnectionException, LoginException {
		return mdao.updateMedicines(mto);
		/**
		 * flag = updateMedicines(mto); if (flag == false) { throw new
		 * ConnectionException(); } else if (mto.getMedicinename() == null ||
		 * mto.getMedicinename().equals("")) { throw new LoginException(); }
		 * return flag;
		 */
	}

	public Vector<MedicalInfoTo> viewMedicines(String medicinename)
			throws ConnectionException {

		return mdao.viewMedicines(medicinename);
	}

	public Vector<MedicalInfoTo> viewMedicineupdate(int pid)
			throws ConnectionException, DataNotFoundException {

		vmto = mdao.viewMedicineupdate(pid);
		if (vmto.isEmpty()) {

			throw new DataNotFoundException();
		}
		return vmto;
	}

	public boolean deleteCompany(int cid) throws ConnectionException {
		return mdao.deleteCompany(cid);
	}

	public boolean updateCompany(MedicalInfoTo mto) throws ConnectionException,
			LoginException {
		return mdao.updateCompany(mto);
		/**
		 * flag = updateCompany(mto); if (flag == false) { throw new
		 * ConnectionException(); } else if (mto.getCompanyname() == null ||
		 * mto.getCompanyname().equals("")) { throw new LoginException(); }
		 * return flag;
		 */
	}

	public Vector<MedicalInfoTo> viewCompanies(String companyname)
			throws ConnectionException {
		return mdao.viewCompanies(companyname);
	}

	public Vector<MedicalInfoTo> viewCompanyupdate(int cid)
			throws ConnectionException, DataNotFoundException {
		vmto = mdao.viewCompanyupdate(cid);
		if (vmto.isEmpty()) {

			throw new DataNotFoundException();
		}
		return vmto;
	}

	public boolean deleteCategory(int categoryid) throws ConnectionException {

		return mdao.deleteCategory(categoryid);
	}

	public boolean updateCategory(MedicalInfoTo mto)
			throws ConnectionException, FileNotFoundException, LoginException {
		flag = updateCategory(mto);
		if (flag == false) {
			throw new ConnectionException();
		} else if (mto.getCategoryname() == null
				|| mto.getCategoryname().equals("")) {
			throw new LoginException();
		}
		return flag;
	}

	public Vector<MedicalInfoTo> viewCategories(String categpryname, String path)
			throws ConnectionException {

		return mdao.viewCategories(categpryname, path);
	}

	public Vector<MedicalInfoTo> viewCategoryupdate(int categoryid, String path)
			throws ConnectionException, FileNotFoundException, IOException,
			DataNotFoundException {
		vmto = mdao.viewCategoryupdate(categoryid, path);
		if (vmto.isEmpty()) {

			throw new DataNotFoundException();
		}
		return vmto;
	}

	public Vector<MedicalInfoTo> viewCategoryNames(String medicinename)
			throws ConnectionException {

		return mdao.viewCategoryNames(medicinename);
	}

	public boolean addCustomerOrder(MedicalInfoTo mto)
			throws ConnectionException {

		try {

			flag = mdao.addCustomerOrder(mto);
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		}

		return flag;
	}

	public Vector<ProfileTo> addCustomerTransaction(MedicalInfoTo mto)
			throws ConnectionException {
		try {
			vpto = mdao.addCustomerTransaction(mto);
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		}
		return vpto;
	}

	public boolean addProductQuantity(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException {
		return mdao.addProductQuantity(mto);
	}

	public Vector<MedicalInfoTo> viewMedicineDetails()
			throws ConnectionException {
		return mdao.viewMedicineDetails();
	}

	public Vector<MedicalInfoTo> viewpayments() throws ConnectionException {
		return mdao.viewpayments();
	}

	public Vector<MedicalInfoTo> viewuserpayments(String loginid) throws ConnectionException {
		return mdao.viewuserpayments(loginid);
	}

	public Vector<MedicalInfoTo> Viewprintbill(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException {
		return mdao.Viewprintbill(mto);
	}
	
}

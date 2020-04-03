package com.pharma.delegate;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Vector;

import com.pharma.bean.FeedbackTo;
import com.pharma.bean.MedicalInfoTo;
import com.pharma.bean.ProfileTo;
import com.pharma.exceptions.ConnectionException;
import com.pharma.exceptions.DataNotFoundException;
import com.pharma.exceptions.LoginException;

import com.pharma.servicei.FeedBackServiceI;
import com.pharma.servicei.MedicalInfoServiceI;
import com.pharma.serviceimpl.FeedBackServiceImpl;
import com.pharma.serviceimpl.MedicalServiceImpl;

public class MedicalInfoMgrDelegate {
	MedicalInfoServiceI msi = new MedicalServiceImpl();

	public boolean addCategory(MedicalInfoTo mto) throws ConnectionException,
			FileNotFoundException {

		return msi.addCategory(mto);
	}

	public boolean addCompany(MedicalInfoTo mto) throws ConnectionException {
		return msi.addCompany(mto);
	}

	public boolean addmedicine(MedicalInfoTo mto) throws ConnectionException {
		return msi.addmedicine(mto);
	}

	public Vector<MedicalInfoTo> viewComanyDetails() throws ConnectionException {
		return msi.viewComanyDetails();
	}

	public Vector<MedicalInfoTo> viewCategoryDetails()
			throws ConnectionException {
		return msi.viewCategoryDetails();
	}

	public Vector<MedicalInfoTo> viewCompaniesDetails(int companyid)
			throws ConnectionException {
		return msi.viewCompaniesDetails(companyid);
	}

	public Vector<MedicalInfoTo> viewCompanyDetails()
			throws ConnectionException {

		return msi.viewCompanyDetails();
	}

	public boolean deleteMedicine(int productid) throws ConnectionException {

		return msi.deleteMedicine(productid);
	}

	public boolean updateMedicines(MedicalInfoTo mto)
			throws ConnectionException, LoginException {

		return msi.updateMedicines(mto);
	}

	public Vector<MedicalInfoTo> viewMedicines(String medicinename)
			throws ConnectionException {

		return msi.viewMedicines(medicinename);
	}

	public Vector<MedicalInfoTo> viewMedicineupdate(int pid)
			throws ConnectionException, DataNotFoundException {

		return msi.viewMedicineupdate(pid);
	}

	public boolean deleteCompany(int cid) throws ConnectionException {

		return msi.deleteCompany(cid);
	}

	public boolean updateCompany(MedicalInfoTo mto) throws ConnectionException,
			LoginException {

		return msi.updateCompany(mto);
	}

	public Vector<MedicalInfoTo> viewCompanies(String companyname)
			throws ConnectionException {

		return msi.viewCompanies(companyname);
	}

	public Vector<MedicalInfoTo> viewCompanyupdate(int cid)
			throws ConnectionException, DataNotFoundException {
		return msi.viewCompanyupdate(cid);
	}

	public boolean deleteCategory(int categoryid) throws ConnectionException {

		return msi.deleteCategory(categoryid);
	}

	public boolean updateCategory(MedicalInfoTo mto)
			throws ConnectionException, LoginException, FileNotFoundException {

		return msi.updateCategory(mto);
	}

	public Vector<MedicalInfoTo> viewCategories(String categoryname, String path)
			throws ConnectionException {

		return msi.viewCategories(categoryname, path);
	}

	public Vector<MedicalInfoTo> viewCategoryupdate(int categoryid, String path)
			throws ConnectionException, DataNotFoundException,
			FileNotFoundException, IOException {
		return msi.viewCategoryupdate(categoryid, path);
	}

	public Vector<MedicalInfoTo> viewCategoryNames(String medicinename)
			throws ConnectionException {

		return msi.viewCategoryNames(medicinename);
	}

	public boolean addCustomerOrder(MedicalInfoTo mto)
			throws ConnectionException {
		return msi.addCustomerOrder(mto);
	}

	public Vector<ProfileTo> addCustomerTransaction(MedicalInfoTo mto)
			throws ConnectionException {
		return msi.addCustomerTransaction(mto);

	}

	public boolean addProductQuantity(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException {
		return msi.addProductQuantity(mto);
	}

	public Vector<MedicalInfoTo> viewMedicineDetails()
			throws ConnectionException {
		return msi.viewMedicineDetails();
	}

	FeedBackServiceI fsi = new FeedBackServiceImpl();

	public boolean cancelFeedBack(int fid) throws ConnectionException {
		return fsi.cancelFeedBack(fid);
	}

	public Vector<FeedbackTo> getAllFeedBack(int fid1)
			throws DataNotFoundException, ConnectionException {
		return fsi.getAllFeedBack(fid1);
	}

	public Vector<FeedbackTo> getFeedBack() throws DataNotFoundException,
			ConnectionException {
		return fsi.getFeedBack();
	}

	public boolean insertFeedBack(FeedbackTo fb) throws LoginException,
			ConnectionException {
		return fsi.insertFeedBack(fb);
	}

	public Vector<MedicalInfoTo> viewpayments() throws ConnectionException {
		return msi.viewpayments();
	}

	public Vector<MedicalInfoTo> viewuserpayments(String loginid)
			throws ConnectionException {
		return msi.viewuserpayments(loginid);
	}

	public Vector<MedicalInfoTo> Viewprintbill(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException {
		return msi.Viewprintbill(mto);
	}

}

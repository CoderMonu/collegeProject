package com.pharma.daoi;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Vector;

import com.pharma.bean.MedicalInfoTo;
import com.pharma.bean.ProfileTo;
import com.pharma.exceptions.ConnectionException;

public interface MedicalInfoDAOI {
	public boolean addCategory(MedicalInfoTo mto) throws ConnectionException,
			FileNotFoundException;

	public boolean addCompany(MedicalInfoTo mto) throws ConnectionException;

	public boolean addmedicine(MedicalInfoTo mto) throws ConnectionException;

	public Vector<MedicalInfoTo> viewComanyDetails() throws ConnectionException;

	public Vector<MedicalInfoTo> viewCategoryDetails()
			throws ConnectionException;

	public Vector<MedicalInfoTo> viewCompaniesDetails(int companyid)
			throws ConnectionException;

	public Vector<MedicalInfoTo> viewCompanyDetails()
			throws ConnectionException;

	public Vector<MedicalInfoTo> viewCompanies(String companyname)
			throws ConnectionException;

	public boolean deleteCompany(int cid) throws ConnectionException;

	public Vector<MedicalInfoTo> viewCompanyupdate(int cid)
			throws ConnectionException;

	public boolean updateCompany(MedicalInfoTo mto) throws ConnectionException;

	public Vector<MedicalInfoTo> viewMedicines(String medicinename)
			throws ConnectionException;

	public boolean deleteMedicine(int productid) throws ConnectionException;

	public Vector<MedicalInfoTo> viewMedicineupdate(int pid)
			throws ConnectionException;

	public boolean updateMedicines(MedicalInfoTo mto)
			throws ConnectionException;

	public Vector<MedicalInfoTo> viewCategories(String categpryname, String path)
			throws ConnectionException;

	public boolean deleteCategory(int categoryid) throws ConnectionException;

	public Vector<MedicalInfoTo> viewCategoryupdate(int categoryid, String path)
			throws ConnectionException, FileNotFoundException, IOException;

	public boolean updateCategory(MedicalInfoTo mto)
			throws ConnectionException, FileNotFoundException;

	public Vector<MedicalInfoTo> viewCategoryNames(String medicinename)
			throws ConnectionException;

	public boolean addCustomerOrder(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException;

	public Vector<ProfileTo> addCustomerTransaction(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException;

	public Vector<MedicalInfoTo> viewMedicineDetails()
			throws ConnectionException;

	public boolean addProductQuantity(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException;

	public Vector<MedicalInfoTo> viewpayments() throws ConnectionException;

	public Vector<MedicalInfoTo> viewuserpayments(String loginid)
			throws ConnectionException;

	public Vector<MedicalInfoTo> Viewprintbill(MedicalInfoTo mto)
			throws FileNotFoundException, ConnectionException;
}

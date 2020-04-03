package com.pharma.bean;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import com.pharma.formbeans.MedicalInfoFormbean;

import com.sun.org.apache.commons.beanutils.BeanUtils;

public class MedicalInfoTo {
	private int productid;
	private int categoryid;
	private int categoryidref;
	private int companyid;
	private int companyidref;
	private String categoryname;
	private String categoryphoto;
	private String companyname;
	private String address;
	private String phno;
	private String email;
	private String medicinename;
	private String manufacturedate;
	private String expirydate;
	private String timeperiod;
	private String mdate;
	private String purpose;
	private int price;
	private int availabletablets;
	private int quantity;
	private int userid;
	private String loginid;
	private int orderquantity;
	private String transaction;
	private int totalquantity;
	private int avail_quantity;
	private String order_date;
	private String pay_date;
	private String paymentmode;
	private int totalprice;
	private String firstName;
	private String lastName;
	private String phoneNo;

	@SuppressWarnings("unchecked")
	public MedicalInfoTo(MedicalInfoFormbean mb) {
		try {
			Map map = BeanUtils.describe(mb);
			BeanUtils.populate(this, map);
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {
			e1.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
	}

	public MedicalInfoTo() {

	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String orderDate) {
		order_date = orderDate;
	}

	public String getPay_date() {
		return pay_date;
	}

	public void setPay_date(String payDate) {
		pay_date = payDate;
	}

	public String getPaymentmode() {
		return paymentmode;
	}

	public void setPaymentmode(String paymentmode) {
		this.paymentmode = paymentmode;
	}

	public int getAvail_quantity() {
		return avail_quantity;
	}

	public void setAvail_quantity(int availQuantity) {
		avail_quantity = availQuantity;
	}

	public String getTransaction() {
		return transaction;
	}

	public void setTransaction(String transaction) {
		this.transaction = transaction;
	}

	public int getTotalquantity() {
		return totalquantity;
	}

	public void setTotalquantity(int totalquantity) {
		this.totalquantity = totalquantity;
	}

	public int getOrderquantity() {
		return orderquantity;
	}

	public void setOrderquantity(int orderquantity) {
		this.orderquantity = orderquantity;
	}

	public String getLoginid() {
		return loginid;
	}

	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getAvailabletablets() {
		return availabletablets;
	}

	public void setAvailabletablets(int availabletablets) {
		this.availabletablets = availabletablets;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPurpose() {
		return purpose;
	}

	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public int getCategoryidref() {
		return categoryidref;
	}

	public void setCategoryidref(int categoryidref) {
		this.categoryidref = categoryidref;
	}

	public int getCompanyid() {
		return companyid;
	}

	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}

	public int getCompanyidref() {
		return companyidref;
	}

	public void setCompanyidref(int companyidref) {
		this.companyidref = companyidref;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public String getCategoryphoto() {
		return categoryphoto;
	}

	public void setCategoryphoto(String categoryphoto) {
		this.categoryphoto = categoryphoto;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhno() {
		return phno;
	}

	public void setPhno(String phno) {
		this.phno = phno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMedicinename() {
		return medicinename;
	}

	public void setMedicinename(String medicinename) {
		this.medicinename = medicinename;
	}

	public String getManufacturedate() {
		return manufacturedate;
	}

	public void setManufacturedate(String manufacturedate) {
		this.manufacturedate = manufacturedate;
	}

	public String getExpirydate() {
		return expirydate;
	}

	public void setExpirydate(String expirydate) {
		this.expirydate = expirydate;
	}

	public String getTimeperiod() {
		return timeperiod;
	}

	public void setTimeperiod(String timeperiod) {
		this.timeperiod = timeperiod;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
}

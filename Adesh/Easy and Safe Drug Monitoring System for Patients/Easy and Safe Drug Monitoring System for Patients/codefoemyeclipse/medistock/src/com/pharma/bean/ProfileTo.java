package com.pharma.bean;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import com.pharma.formbeans.profileformbean;
import com.sun.org.apache.commons.beanutils.BeanUtils;

//Profile Bean Class
public class ProfileTo {
	private String firstName;
	private String lastName;
	private String birthdate;
	private String squest;
	private String secrete;
	private String ownquest;
	private String photo;
	private String fax;
	private String email;
	private String gender;
	private String loginid;
	private String addressType;
	private String houseNo;
	private String street;
	private String city;
	private String state;
	private String country;
	private String pin;
	private String phoneNo;
	private String loginType;
	private String userName;
	private String password;
	private String newpassword;
	private int userid;
	private String status;
    private String oldpassword;	

	


	@SuppressWarnings("unchecked")
	public ProfileTo(profileformbean pb) {
		try {
			Map map = BeanUtils.describe(pb);
			BeanUtils.populate(this, map);
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {
			e1.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
	}
	
	public ProfileTo() {

	}

	public String getOldpassword() {
		return oldpassword;
	}

	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
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

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getSquest() {
		return squest;
	}

	public void setSquest(String squest) {
		this.squest = squest;
	}

	public String getSecrete() {
		return secrete;
	}

	public void setSecrete(String secrete) {
		this.secrete = secrete;
	}

	public String getOwnquest() {
		return ownquest;
	}

	public void setOwnquest(String ownquest) {
		this.ownquest = ownquest;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLoginid() {
		return loginid;
	}

	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}

	public String getAddressType() {
		return addressType;
	}

	public void setAddressType(String addressType) {
		this.addressType = addressType;
	}

	public String getHouseNo() {
		return houseNo;
	}

	public void setHouseNo(String houseNo) {
		this.houseNo = houseNo;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getLoginType() {
		return loginType;
	}

	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}

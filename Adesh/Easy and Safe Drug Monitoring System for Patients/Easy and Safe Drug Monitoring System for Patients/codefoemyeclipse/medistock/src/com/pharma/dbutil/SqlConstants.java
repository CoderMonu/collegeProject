package com.pharma.dbutil;

public class SqlConstants {
	// UsersDAO
	public static final String _CHECK_USER = "select userid,logintype,loginid from userdetails  where loginid=? and password=? and status='Active'";
	public static final String _GET_FACULTY = "select USERID,LOGINTYPE,firstname,lastname,to_char(dob),emailid,faxno,photograph from userdetails where logintype='faculty'";
	public static final String _GET_STUDENTS = "select USERID,LOGINTYPE,firstname,lastname,to_char(dob),emailid,faxno,photograph from userdetails where logintype='student'";
	public static final String _DELETE_USER = "delete userdetails where userid=?";
	
	public static final String _UPDATE_PROFILE = "select u.userid,u.firstname,u.lastname,u.dob,u.emailid,u.faxno,u.photograph,a.addresstype,a.houseno,a.STREET,a.city,a.STATE,a.COUNTRY,a.PINCODE,a.phno from userdetails u,addresses a where u.userid=a.useridref and u.loginid=?";
	public static final String _GET_PROFILE = "{call showprofile(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	public static final String _CHANGE_PASSWORD = "update userdetails set password=? where loginid=? and password=?";
	public static final String _VIEW_USER = "select u.userid,u.firstname,u.emailid,u.gender,u.faxno,u.photograph,u.status,a.houseno,a.STREET,a.city,a.STATE,a.COUNTRY,a.PINCODE,a.phno,u.logintype,u.loginid from userdetails u,addresses a where u.userid=a.useridref and  status=? and logintype=?";
	public static final String _UPDATE_USER_STATUS = "update userdetails set status='Active' where userid=?";
	public static final String _VIEW_USER_PROFILE = "select u.userid,u.firstname,u.lastname,u.dob,u.emailid,u.faxno,u.photograph,a.addresstype,a.houseno,a.STREET,a.city,a.STATE,a.COUNTRY,a.PINCODE,a.phno from userdetails u,addresses a where u.userid=a.useridref and  u.loginid=? ";
	
	
	public static final String _INSERT_DISPATCH_OUTGOING="insert into dispatchoutdetails values(?,?,?)";
	
	// FeedbackDAO
	public static final String _INSERT_FEEDBACK = "insert into feedback values((select nvl(max(fid),100)+1 from feedback),?,?,?,?,?)";
	public static final String _GET_FEEDBACK = "select *from feedback";
	public static final String _GET_FEEDBACK_AT = "select *from feedback where fid=?";
	public static final String _DELETE_FEEDBACK = "delete from feedback where fid=?";
	
	
	
    //Category
	public static final String _INSERT_CATEGORY="insert into category values((select nvl(max(categoryid),100)+1 from category),?,?,?,sysdate)";
    public static final String _DELETE_CATEGORY="delete category where categoryid=?";
    public static final String _VIEW_CATEGORY_DETAILS="select categoryid,categoryname from category";
    public static final String _UPDATE_CATEGORY="update category set categoryid=?,categoryname=?,categoryphoto=? where categoryid=?";
    public static final String _VIEW_CATEGORY_UPDATE="select categoryid,categoryname,categoryphoto from category where categoryid=?";
    public static final String _VIEW_CATEGORY="select categoryid,categoryname,categoryphoto from category";
    public static final String _VIEW_CATEGORY_NAME="select p.productid,p.madicinename,to_char(p.manufacturedate),to_char(p.expirydate),p.bestbefore,p.purpose,a.avail_quantity,a.price,a.userid from product p,MEDICINECOST_ALLOWER a where p.productid=a.productid ";
    //Medicines
	public static final String _INSERT_MEDICINE="insert into product values((select nvl(max(productid),0)+1 from product),?,?,sysdate,?,?,?,?)";
	public static final String _VIEW_MEDICINES="select p.productid,p.madicinename,to_char(p.manufacturedate),to_char(p.expirydate),p.bestbefore,p.purpose,a.price,a.avail_quantity from product p,MEDICINECOST_ALLOWER a";
    public static final String _DELETE_MEDICINE="delete product where productid=?";
    public static final String _VIEW_MEDICINES_UPDATE="select productid,madicinename,to_char(manufacturedate),to_char(expirydate),bestbefore,purpose from product where productid=?";
    public static final String _UPDATE_MEDICINES="update product set madicinename=?,to_char(manufacturedate)=?,to_char(expirydate)=?,bestbefore=?,purpose=? where productid=?";
	//Company
	public static final String _INSERT_COMPANY="insert into MANUFACTURECOMPANYDETAILS values((select nvl(max(companyid),1000)+1 from MANUFACTURECOMPANYDETAILS),?,?,?,?)";
	public static final String _VIEW_COMPANY_DETAILS="select companyid,companyname from MANUFACTURECOMPANYDETAILS";
	public static final String _VIEW_COMPANIES_DETAILS="select c.companyid,c.companyname,ca.categoryid,ca.categoryname from MANUFACTURECOMPANYDETAILS c,category ca where companyidref=? and c.companyid=ca.companyidref";
    public static final String _VIEW_COMPANY="select * from MANUFACTURECOMPANYDETAILS";
    public static final String _DELETE_COMPANY="delete MANUFACTURECOMPANYDETAILS where companyid=?";
    public static final String _VIEW_COMPANY_UPDATE="select * from MANUFACTURECOMPANYDETAILS where companyid=?";
    public static final String _UPDATE_COMPANY="update MANUFACTURECOMPANYDETAILS set companyid=?,companyname=?,address=?,phno=?,email=? where companyid=?";
    public static final String _VIEW_PRODUCT_DETAILS="select productid,madicinename from product";
    public static final String _VIEW_BILLS="select p.madicinename,m.price,mo.order_quantity,to_char(mo.order_date),pm.paymentmode,to_char(pm.pay_date),mo.totalprice,mo.loginid from MEDICINE_ORDERS mo,MEDICINECOST_ALLOWER m,payment pm,product p where p.productid=m.productid and m.productid=mo.productid and mo.orderid=pm.ORDERIDREF";
    public static final String _VIEW_USER_BILLS="select p.madicinename,m.price,mo.order_quantity,to_char(mo.order_date),pm.paymentmode,to_char(pm.pay_date),mo.totalprice,mo.loginid from MEDICINE_ORDERS mo,MEDICINECOST_ALLOWER m,payment pm,product p,userdetails u where p.productid=m.productid and m.productid=mo.productid and mo.orderid=pm.ORDERIDREF and mo.loginid=u.loginid and u.loginid=?";
  
}

package com.pharma.util;

public class UtilConstants {

	// Users
	public static final String _ADMIN = "Admin";
	public static final String _DEALER = "dealer";
	public static final String _CUSTOMER = "customer";
	public static final String _EMPLOYEE = "employee";
	public static final String _USERNAME = "username";
	public static final String _PASSWORD = "password";
	public static final String _LOGIN_ROLE = "role";
	public static final String _FIRSTNAME = "firstname";
	public static final String _ROLE = "role";
	public static String _LOGIN_FAILED_PAGE = "./jsps/loginform.jsp";
	public static final String _LOGIN_USER = "user";
	public static final String _USERID = "userid";
	public static final String _MANAGER_PAGE = "./jsps/dealerhome.jsp";
	public static final String _ADMIN_HOME = "./jsps/adminhome.jsp";
	public static final String _STOREKEEPER_PAGE = "./jsps/storekeeperhome.jsp";
	public static final String _CUSTOMER_HOME = "./jsps/customerhome.jsp";
	public static final String _EMPLOYEE_HOME = "./jsps/employeehome.jsp";
	public static final String _LOGIN_HOME = "./jsps/loginform.jsp";
	public static final String _LOGOUT_SUCCESS = "logout successfully";
	public static final String _LOGOUT_FAILED = "logout Failed";
	public static final String _INVALID_ENTRIES = "Plz Provide Proper Info";
	public static final String _INVALID_USER = "Invalid Username & Password";
	public static final String _STATUS = "./jsps/status.jsp";
	public static final String _LOGOUT = "./jsps/loginform.jsp?status=logout successfully";
	// user
	public static final String _USER_INFO = "Users Address Information";
	public static final String _VIEW_USER = "./jsps/viewuser.jsp";
	public static final String _NO_USER = "No USERS are available";
	public static final String _INVALIED_ENTRY = "Invalied Entries Plz Provide Proper Data";
	public static final String _USER_STATUS = "Users status updated successfully";
	public static final String _USER_STATUS_FAIL = "Users status updation Failed";
	public static final String _USER_PROFILE_INFO = "Your Details";
	public static final String _VIEW_USER_PROFILE = "./jsps/viewprofile.jsp";
	public static final String _UPDATE_USER_PROFILE = "./jsps/updateprofile.jsp";
	public static final String _NO_USER_PROFILE = "Sorry Server down pls try later.....";
	public static final String _UPDATE_SUCCESS = " Updated Successfully";
	public static final String _UPDATE_FAIL = "Updation Successfully";
	public static final String _USER_DELETE_SUCCESS = " Users Deleted Successfully";
	public static final String _USER_DELETE_FAIL = "No user deleted";
	// registration
	public static final String _REGISTERED_SUCCESS = "Registration completed Successfully";
	public static final String _REGISTERED_FAIL = "Registration Failed due to some technical problem";
	public static final String _VIEW_ALL__USER = "./jsps/viewuser.jsp";

	public static final String _PASSWORD_SUCCESS = "Password Changed Successfully";

	public static final String _PASSWORD_FAILED = "Password Changing Failed";
	public static final String _USER_PASSWORD_CHANGE = "./jsps/changepassword.jsp";

	public static final String _DISPATCH_OUT_GOING_SUCCESS = "Dispatch Out Going details entered Successfully";
	public static final String _DISPATCH_OUT_GOING_FAIL = "Dispatch Out Going details entering Failed";

	// Feedback
	public static final String _INSERT_FEEDBACK = "Feed Back is Posted Successfully";
	public static final String _FEEDBACK_FAILED = "Feedback posting Failed";
	public static final String _FEEDBACK_HOME = "./jsps/feedback.jsp";
	public static final String _CANCEL_FEEDBACK = "Feed Back is Cancilation Successfully";
	public static final String _CANCEL_FEEDBACK_FAILED = "Feedback Cancilation Failed";
	public static final String _VIEW_ALL_FEEDBACKS = "These R The FeedBacks From Customers";
	public static final String _ALL_FEEDBACKS_FAILED = "No Feedbacks from Users";
	public static final String _DISPLAY_FEEDBACK_INFO = "./jsps/viewfeedback.jsp";
	public static final String _DISPLAY_FEEDBACK = "./jsps/ViewAllFeedback.jsp";
	public static final String _DISPLAY_FEEDBACK_ACTION = "./DisplayFeedbackAction";
	public static final String _VIEW_ALL_FEEDBACK = "./jsps/viewallfeedbacks.jsp";
	public static final String _VIEW_FEEDBACK = "./jsps/ViewFeedBack.jsp";

	// mails
	public static final String _COMPOSE_MAIL = "./jsps/ComposeMail.jsp";
	public static final String _NO_CONTACTS = "No Contacts";
	public static final String _SEND_MAIL = "Mail Sended Successfully";
	public static final String _SEND_MAILS = "./jsps/status.jsp";
	public static final String _SEND_MAIL_FAIL = " Mail Sending Fail";
	public static final String _MAILS = "Your MailsTO";
	public static final String _MAIL_BOX = "./jsps/MailBox.jsp";
	public static final String _MAIL_BOX_FAIL = "Mail box is empty";
	public static final String __MAIL_MESSAGE_FAIL = "Error at showing message body";
	public static final String _MAIL_DELETE_SUCCESS = " Mail Deleted Successfully";
	public static final String _MAIL_DELETE_SUCCESS_FAIL = "Mail not deleted";
	public static final String _MAIL_MESSAGE = "Message body";
	public static final String _MAIL_BODY = "./jsps/Mailbody.jsp";
	// Company
	public static final String _COMPANY_ADDED_SUCCESS = "Company is Added successfully";
	public static final String _COMPANY_ADDED_FAIL = "Company Adding is Failed";
	public static final String _VIEW_COMPANY_DETAIL = "./jsps/addcategory.jsp";
	public static final String _NO_COMPANY_DETAILS = "There is no Companies available here";
	public static final String _COMPANY_DELETE_SUCCESS = "Company Deleted Successfully";
	public static final String _COMPANY_DELETE_FAIL = "Company Deletion is failed because it contains child record in categories, first delete the child record in categories";
	public static final String _UPDATE__COMPANY_SUCCESS = "Company Details Updation Successful";
	public static final String _VIEW_UPDATE__COMPANY= "Enjoy the Company services";
	public static final String _UPDATE__COMPANY_FAIL = "Company Details Updation Failed";
	public static final String _UPDATE__COMPANY = "./jsps/updatecompany.jsp";
	//public static final String _UPDATE__COMPANY_SUCCESS = "Medicine Updation Successful";
	//public static final String _VIEW_UPDATE__COMPANY = "Enjoy the Medicine services";
	//public static final String _UPDATE__COMPANY_FAIL = "Medicine Updation Failed";

	public static final String _VIEW_COMPANY = "./jsps/viewcompany.jsp";
	public static final String _NO_COMPANY = "No Companies are available";
	public static final String _VIEW_ALL__COMPANY = "./jsps/viewcompany.jsp";
	// Category
	public static final String _CATEGORY_ADDED_SUCCESS = "Category is Added successfully";
	public static final String _CATEGORY_ADDED_FAIL = "Category Adding is Failed";
	public static final String _UPDATE__CATEGORY_SUCCESS = "Category Details Updation Successful";
	public static final String _VIEW_UPDATE__CATEGORY= "Enjoy the Category services";
	public static final String _UPDATE__CATEGORY_FAIL = "Category Details Updation Failed";
	public static final String _CATEGORY_DELETE_SUCCESS = "Category Deleted Successfully";
	public static final String _CATEGORY_DELETE_FAIL = "Category Deletion is failed because it contains child record in medicines, first delete the child record in medicines";
	public static final String _VIEW_CATEGORY = "./jsps/viewcategory.jsp";
	public static final String _NO_CATEGORY = "No Categories are available";
	public static final String _VIEW_ALL__CATEGORY = "./jsps/viewcategory.jsp";

	public static final String _UPDATE__CATEGORY = "./jsps/updatecategory.jsp";
	// Medicines
	public static final String _MEDICINE_ADDED_SUCCESS = "Medicine is Added successfully";
	public static final String _MEDICINE_ADDED_FAIL = "Medicine Adding is Failed";
	public static final String _VIEW_CATEGORY_DETAIL = "./jsps/addmedicines.jsp";
	public static final String _NO_CATEGORY_DETAILS = "There is no Categories available here";
	public static final String _VIEW_COMPANIES_DETAIL = "./jsps/addmedicines.jsp";
	public static final String _UPDATE__MEDICINE_SUCCESS = "Medicine Updation Successful";
	public static final String _VIEW_UPDATE__MEDICINE = "Enjoy the Medical services";
	public static final String _UPDATE__MEDICINE_FAIL = "Medicine Updation Failed";
	public static final String _MEDICINE_DELETE_SUCCESS = "Medicine Deleted Successfully";
	public static final String _MEDICINE_DELETE_FAIL = "Medicine Deletion is failed";
	public static final String _VIEW_COMPANY_DETAILS = "./jsps/addmedicines.jsp";

	public static final String _UPDATE__MEDICINES = "./jsps/updatemedicines.jsp";
	public static final String _UPDATE__MEDICINES_SUCCESS = "Medicine Updation Successful";
	public static final String _VIEW_UPDATE__MEDICINES = "Enjoy the Medicine services";
	public static final String _UPDATE__MEDICINES_FAIL = "Medicine Updation Failed";

	public static final String _VIEW_MEDICINES = "./jsps/viewmedicines.jsp";
	public static final String _NO_MEDICINES = "No Medicines are available";
	public static final String _VIEW_ALL__MEDICINES = "./jsps/viewmedicines.jsp";
	public static final String _VIEW_CATEGORY_NAMES = "./jsps/viewnames.jsp";
	public static final String _VIEW_CATEGORY_NAME_SELL = "./jsps/sellmedicines.jsp";
	public static final String _VIEW_ALL_CATEGORY_NAMES = "./jsps/sellmedicines.jsp";
	public static final String _NO_CATEGORY_NAMES= "No medicines are available with this category name";
	
	public static final String _VIEW_PRODUCT_DETAIL = "./jsps/viewproducts.jsp";
	public static final String _NO_PRODUCT_DETAILS = "There is no Medicines available here";
	public static final String _PRODUCT_COST_ADDED_SUCCESS = "Adding quantity and cost successfully";
	public static final String _PRODUCT_COST_ADDED_FAIL = "Adding quantity and cost Failed";
	public static final String _VIEW_CATEGORIES_NAMES = "./jsps/viewmedicinenames.jsp";
	public static final String _VIEW_ALL_CATEGORIES_NAMES = "./jsps/viewmedicinenames.jsp";
	 public static final String _DISPLAY_ADDRESS="./jsps/displayaddress.jsp" ;
	 public static final String _DISPLAY_PRINT_BILL="./jsps/printbill.jsp" ;
	 public static final String _VIEW_PAYMENTS = "./jsps/viewbills.jsp";
	 public static final String _VIEW_ALL_PAYMENTS = "./jsps/viewbills.jsp";
	 public static final String _NO_PAYMENTS= "No Bills are there in the system ";
	 
	 public static final String _VIEW_USER_PAYMENTS = "./jsps/viewuserbills.jsp";
	 public static final String _VIEW_ALL_USER_PAYMENTS = "./jsps/viewuserbills.jsp";
	 public static final String _NO_USER_PAYMENTS= "No Bills are there in the system ";
}

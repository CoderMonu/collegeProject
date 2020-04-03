package com.law.action;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.law.Dao.CaseDao;
import com.nit.bean.MoneyBean;

public class FinalBillAction extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		doPost(request,response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		RequestDispatcher rd = null;
		String path = "";
		//Vector<ProfileTo> vprofile = new Vector<ProfileTo>();
		boolean flag=false;
		
		MoneyBean rto =new MoneyBean();
				

    	
		Vector<MoneyBean> ps = new Vector<MoneyBean>();
	
		MoneyBean rb = new MoneyBean();
		String fname=request.getParameter("billno");
		rb.setBillNo(fname);
		String lname=request.getParameter("bildate");
		rb.setBillDate(lname);
		String ltype=request.getParameter("fileno");
		rb.setFileno(ltype);
		String uname=request.getParameter("client");
		rb.setClient(uname);
		String pass=request.getParameter("caseno");
		rb.setCaseno(pass);
		String cpass=request.getParameter("addresses");
		rb.setAddress(cpass);
		String cs=request.getParameter("casename");
		rb.setCasename(uname);
		String fm=request.getParameter("casefee");
		rb.setCaseFee(fm);
		String cps=request.getParameter("courtfee");
		rb.setCourtFee(cps);
		String cps1=request.getParameter("expensehead");
		rb.setExpensehead(cps1);
		
		String fna=request.getParameter("amount");
		rb.setAmount(fna);
		String year=request.getParameter("PaymentType");
		rb.setPaymenttype(year);
		String cc=request.getParameter("cdno");
		rb.setDraftNo(cc);
		String payy1=request.getParameter("ramount");
		rb.setReceiptAmount(payy1);
		String payy2=request.getParameter("note");
		rb.setNote(payy2);
		String cdate1=request.getParameter("cddate");
		rb.setDraftDate(cdate1);
		String paidamount=request.getParameter("paidmount");
		rb.setPaidAmount(paidamount);
		String bankname=request.getParameter("bankname");
		rb.setBankname(bankname);
		String camount=request.getParameter("cdamount");
		rb.setDraftAmount(camount);
		String billno=request.getParameter("totalbillno");
		rb.setTotalBillAmount(billno);
		String advpaid=request.getParameter("advancedpaid");
		rb.setAdvancedPaid(advpaid);
		String duebill=request.getParameter("duebillamount");
		rb.setDueBillAmount(duebill);
		String amounti=request.getParameter("amountinwords");
		rb.setAwords(amounti);
						try {
	    					flag=new CaseDao().AddFinalMoney(rb);
	    					System.out.println("flag=="+flag);

		
		System.out.println("flag=="+flag);
			if (flag) {
				
				request.setAttribute("status","Finall Bill Added Successfully");
				path = "FinalBill.jsp";
			} else {
				request.setAttribute("status",
						"Finall Bill not Added Successfully");
				path="FinalBill.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
			path = "FinalBill.jsp";
			request.setAttribute("status", e.getMessage());
		}
		rd = request.getRequestDispatcher("./SearchFinallBill.jsp");
		rd.forward(request, response);
		
		
		
		
		
		
		
		}

}

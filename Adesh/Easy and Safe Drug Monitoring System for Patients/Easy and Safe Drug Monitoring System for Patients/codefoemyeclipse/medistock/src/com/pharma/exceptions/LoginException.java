package com.pharma.exceptions;

//LoginException Class
public class LoginException extends Exception {
	private static final long serialVersionUID = 1L;

	public LoginException() {

	}

	public LoginException(String msg) {
		super(msg);
	}

}

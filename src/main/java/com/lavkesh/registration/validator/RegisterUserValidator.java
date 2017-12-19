package com.lavkesh.registration.validator;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.lavkesh.registration.model.RegisterUser;

@Component
public class RegisterUserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return RegisterUser.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		RegisterUser registerUser = (RegisterUser) target;
		
		String userName = registerUser.getUserName().trim();
		if(userName.length() == 0) {
			errors.rejectValue("userName", "NotEmpty.userName");
		} else if( userName.length() < 8 || userName.length() > 15 ) {
			errors.rejectValue("userName", "error.length.userName");
		}
		
		String password = registerUser.getPassword().trim();
		if(password.length() == 0) {
			errors.rejectValue("password", "NotEmpty.password");
		} else if( password.length() < 8 || password.length() > 15 ) {
			errors.rejectValue("password", "error.length.password");
		}
		
		String confirmPassword = registerUser.getConfirmPassword().trim();
		if(confirmPassword.length() == 0) {
			errors.rejectValue("confirmPassword", "NotEmpty.confirmPassword");
		} else if(password.length() > 0 && confirmPassword.length() > 0 && !password.equals(confirmPassword)) {
			errors.rejectValue("confirmPassword", "error.register.confirmPasswordNotEqual");
		}
		
		String dob = registerUser.getDob() != null ? registerUser.getDob().trim() : "";
		if(! StringUtils.isEmpty(dob)) {
			Date dobDate = parseDate(dob);
			if(dobDate == null) {
				errors.rejectValue("dob", "invalid.dob");
			} else {
				Date currentDate = getCurrentDate();
				
				boolean currentOrFutureDate = dobDate.compareTo(currentDate) >= 0;
				if(currentOrFutureDate) {
					errors.rejectValue("dob", "future.dob");
				}
			}
		}
		
	}
	
	private Date getCurrentDate() {
		Calendar c1 = Calendar.getInstance();
		c1.set(Calendar.HOUR, 0);
		c1.set(Calendar.MINUTE, 0);
		c1.set(Calendar.SECOND, 0);
		c1.set(Calendar.MILLISECOND, 0);
		return c1.getTime();
	}
	
	private Date parseDate(String date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
        dateFormat.setLenient(false);
		try {
			return dateFormat.parse(date);
		} catch (ParseException e) {
			return null;
		}
	}
}
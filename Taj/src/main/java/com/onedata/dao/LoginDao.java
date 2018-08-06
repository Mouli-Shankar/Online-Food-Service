package com.onedata.dao;

import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

public interface LoginDao {
	ModelAndView checkLogin(Object[] objectArray);
	ModelAndView addUser(Object[] objectArray);
}

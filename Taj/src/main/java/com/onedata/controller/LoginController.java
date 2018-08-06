package com.onedata.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.onedata.bean.LoginBean;
import com.onedata.bean.RegisterBean;
import com.onedata.dao.LoginDao;

@Controller
@SessionAttributes("uname")
public class LoginController {

	@Autowired
	LoginDao loginDao;

	@GetMapping("/")
    public String root() {
        return "NewFile";
    }

	@GetMapping("/login")
	public String login() {
		return "Login";
	}

    @PostMapping(path="/checkLogin")
    public ModelAndView checkLogin(@ModelAttribute LoginBean objloginBean) {
		Object[] objectArray = {objloginBean.getUname(), objloginBean.getPass()};
		return loginDao.checkLogin(objectArray);
    }
	
    @PostMapping("/addUser")
    public ModelAndView addUser(@ModelAttribute RegisterBean objRegisterBean) {
		Object[] objectArray = {objRegisterBean.getUname(), objRegisterBean.getPass(), objRegisterBean.getEmail(),objRegisterBean.getMobile(),objRegisterBean.getAddress()};
		return loginDao.addUser(objectArray);
    }

    @GetMapping("/logout")
    public String logOut(SessionStatus sessionStatus)
    {
    	sessionStatus.setComplete();
    	return "Register";
    }

	@GetMapping("/register")
	public String register() {
		return "Register";
	}
	
	@GetMapping("/about")
	public String about()
	{
		return "about";
	}
}

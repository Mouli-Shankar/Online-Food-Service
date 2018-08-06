package com.onedata.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.onedata.bean.LoginBean;
import com.onedata.util.Constants;

@Repository
public class LoginDaoImp extends JdbcDaoSupport implements LoginDao{
	
	@Autowired
	DataSource dataSource;

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@PostConstruct
	public void initialize() 
	{
		setDataSource(dataSource);
	}

	@Override
	public ModelAndView checkLogin(Object[] objectArray)
	{
		LoginBean objloginBean = null;
		List<LoginBean> lstLoginBean = null;
		
		List<Map<String,Object>> resultList = getJdbcTemplate().queryForList(Constants.SELECT_USERS, objectArray);
		
    	ModelAndView mv = new ModelAndView();

		for(Map<String,Object> valueMap : resultList) {
			objloginBean = new LoginBean();
			
			objloginBean.setUname((String)valueMap.get(Constants.UNAME));
			objloginBean.setPass((String)valueMap.get(Constants.PASS));
			
			if(lstLoginBean == null) {
				lstLoginBean = new ArrayList<>();
			}
			lstLoginBean.add(objloginBean);
		}
		if(lstLoginBean != null)
    	{
			mv.setViewName("AddToCart");
        	mv.addObject("uname",objloginBean.getUname());
    	}
    	else
    	{
			mv.setViewName("Access_Denied");
        	mv.addObject("uname",objloginBean.getUname());
    	}
		return mv;
	}

	@Override
	public ModelAndView addUser(Object[] objectArray)
	{
		String RegResult = null;
		LoginBean objloginBean = null;
		List<LoginBean> lstLoginBean = null;
    	ModelAndView mv = new ModelAndView();
    	
    	Object[] objects = {objectArray[0]};
    	List<Map<String,Object>> resultList = getJdbcTemplate().queryForList(Constants.SELECT_USER, objects);

		for(Map<String,Object> valueMap : resultList) {
			objloginBean = new LoginBean();
			
			objloginBean.setUname((String)valueMap.get(Constants.UNAME));
			
			if(lstLoginBean == null) {
				lstLoginBean = new ArrayList<>();
			}
			lstLoginBean.add(objloginBean);
		}
		if(lstLoginBean != null)
		{
        	RegResult = "<h1>User Already Exist!</h1>\n<p>Back to <a href=\"/register\">Sign Up</a></p>";
		}
		else
		{
			if(jdbcTemplate.update(Constants.INSERT_USER, objectArray) == 1)
			{
	        	RegResult = "<h1>Sign Up Success.</h1>\n<p>Go to <a href=\"/login\">Sign In</a>";
			}
		}
    	mv.setViewName("RegResult");
    	mv.addObject("RegResult",RegResult);
   		return mv;
	}

}

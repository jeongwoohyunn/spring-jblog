package com.douzone.jblog.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.douzone.jblog.repository.UserDao;
import com.douzone.jblog.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public boolean existid( String id ) {
		UserVo userVo = userDao.get( id );
		return userVo != null;
	}
	
	public void join( UserVo userVo ) {
		userDao.insert( userVo );
	}
	
	public UserVo getUser( String id, String password ) {
		return userDao.get( id, password );
	}
	
}

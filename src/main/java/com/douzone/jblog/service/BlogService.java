package com.douzone.jblog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.douzone.jblog.repository.BlogDao;
import com.douzone.jblog.vo.SiteVo;

@Service
public class BlogService {
	@Autowired
	private BlogDao siteDao;
	public SiteVo get() {
		return siteDao.get();
	}
	
}

package com.douzone.jblog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.douzone.jblog.service.FileuploadService;
import com.douzone.security.Auth;
import com.douzone.jblog.service.BlogService;

@Controller
@RequestMapping("/blog")
public class BlogController {
	@Autowired
	private BlogService siteService;

	@Autowired
	private FileuploadService fileuploadService;
	// 주입받음

	@RequestMapping(value = "/blog-main",method=RequestMethod.GET )
	public String main() {//value = "/blog-main/{vo.id}"
		
		return "blog/blog-main";
	}
	@RequestMapping(value = "/blog-admin-basic", method=RequestMethod.GET )
	public String basic() {
		//아이디에 해당하는 카테고리,포스트를 다들고온다. 서비스에서 다 만들어서 들고만오게
		return "blog/blog-admin-basic";
	}
	@RequestMapping(value = "/blog-admin-category", method=RequestMethod.GET )
	public String category() {
		return "blog/blog-admin-category";
	}
	
	@Auth
	@RequestMapping(value = "/blog-admin-write", method=RequestMethod.GET )
	public String write() {
		return "blog/blog-admin-write";
	}
	
}

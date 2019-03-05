package com.douzone.jblog.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.douzone.jblog.vo.SiteVo;

@Repository
public class BlogDao {
	
	@Autowired
	private SqlSession sqlSession;
	public SiteVo get() {
		return sqlSession.selectOne("site.select");
	}
}
package com.zdnet.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;

import com.zdnet.domain.BookComment;
import com.zdnet.domain.FilmComment;
import com.zdnet.domain.MusicComment;

public interface CommentDao {

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory);

	public void insertBookComment(BookComment bookComment);

	public void delBookComment(Integer bcid);

	public void insertFilmComment(FilmComment filmComment);

	public void delFilmComment(Integer fcid);

	public void insertMusicComment(MusicComment musicComment);

	public void delMusicComment(Integer mcid);

}
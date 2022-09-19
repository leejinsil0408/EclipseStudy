package com.human.dao;

import java.util.List;

import com.human.dto.BoardDto;

public interface IBoardDao {
	public void create(BoardDto dto) throws Exception;
	public BoardDto read(int bno) throws Exception;
	public void delete(int bno) throws Exception;
	public void update(BoardDto dto) throws Exception;
	public List<BoardDto> listAll() throws Exception;
	
}

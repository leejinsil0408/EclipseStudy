package com.human.dao;

import java.util.ArrayList;

import com.human.dto.HumanDto;

//데이터 베이스를 조작하는 인터페이스 
public interface IHumanDao {
	public void insert(HumanDto dto) throws Exception;
	public void update(HumanDto dto) throws Exception;
	public void delete(String name) throws Exception;
	public ArrayList<HumanDto> selectAll() throws Exception;
	public HumanDto selectName(String name) throws Exception;
	
}

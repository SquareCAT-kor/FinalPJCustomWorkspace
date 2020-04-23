package top.dao;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import top.frame.Dao;
import top.mapper.SalesMapper;
import top.vo.SalesVO;

@Repository("salesdao")
public class SalesDao implements Dao<String, SalesVO> {
	@Autowired
	SalesMapper salesmapper;

	@Override
	public SalesVO select(String salesID) {
		return salesmapper.select(salesID);
	}

	public SalesVO selectbychain(String chainID) {
		return salesmapper.selectbychain(chainID);
	}

	@Override
	public ArrayList<SalesVO> selectall() {
		return salesmapper.selectall();
	}

	@Override
	public void insert(SalesVO model) throws Exception {
		salesmapper.insert(model);

	}

	@Override
	public void update(SalesVO model) throws Exception {
		salesmapper.update(model);
	}

	@Override
	public void delete(String salesID) throws Exception {
		salesmapper.delete(salesID);

	}

}
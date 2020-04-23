package top.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import top.vo.SalesVO;

public interface SalesMapper {

	public SalesVO select(String salesID);

	public SalesVO selectbychain(String chainID);

	public ArrayList<SalesVO> selectall();

	public void insert(SalesVO model);

	public void update(SalesVO model);

	public void delete(String salesID);

}
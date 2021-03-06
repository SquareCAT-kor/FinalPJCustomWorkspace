package top.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import top.frame.Biz;
import top.frame.Dao;
import top.vo.ChainVO;

@Service("chainbiz")
public class ChainBiz implements Biz<String, ChainVO> {

	@Resource(name = "chaindao")
	Dao<String, ChainVO> dao;

	@Override
	public ChainVO get(String chainID) {
		return dao.select(chainID);
	}

	@Override
	public ArrayList<ChainVO> get() {
		return dao.selectall();
	}

	@Override
	public ArrayList<ChainVO> getbyhq(String hqID) {
		return dao.selectbyhq(hqID);
	}

	@Override
	public ChainVO getchainname(String hqid) {

		return dao.selectchainname(hqid);
	}

	@Override
	public ArrayList<ChainVO> getnotifi(String hqid) {
		return dao.selectnotifi(hqid);

	}

	@Override
	public void register(ChainVO model) {
		// TODO Auto-generated method stub
		
	}

}
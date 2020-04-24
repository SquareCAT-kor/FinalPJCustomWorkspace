package top.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import top.frame.Biz;
import top.frame.Dao;
import top.vo.SalesVO;

@Service("salesbiz")
public class SalesBiz implements Biz<String, SalesVO> {

	@Resource(name = "salesdao")
	Dao<String, SalesVO> dao;

	@Override
	public SalesVO get(String salesID) {
		return dao.select(salesID);
	}

	public SalesVO getbychain(String chainID) {
		return dao.selectbychain(chainID);
	}

	public ArrayList<SalesVO> getdailysales(){
		return dao.selectdailysales();
	}
	
	@Override
	public ArrayList<SalesVO> get() {
		return dao.selectall();
	}

	@Override
	public void register(SalesVO model) throws Exception {
		dao.insert(model);

	}

	@Override
	public void modify(SalesVO model) throws Exception {
		dao.update(model);

	}

	@Override
	public void remove(String salesID) throws Exception {
		dao.delete(salesID);

	}

}
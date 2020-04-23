package app_sales;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesVO;

public class salesInsert {

	@Autowired
	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesVO> biz = (Biz<String, SalesVO>) factory.getBean("salesbiz");

		SalesVO sales = new SalesVO();
		sales.setChainID("chainID_1000000");
		sales.setSalesID("salesID");
		sales.setSalesRegDate("2020042313443000");
		sales.setTotSales(100);

		
		System.out.println(sales.toString());
		
		try {
			biz.register(sales);
			System.out.println("sales Register Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

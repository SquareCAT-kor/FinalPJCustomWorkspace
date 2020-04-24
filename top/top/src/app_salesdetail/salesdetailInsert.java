package app_salesdetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesDetailVO;

public class salesdetailInsert {

	@Autowired
	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesDetailVO> biz = (Biz<String, SalesDetailVO>) factory.getBean("salesdetailbiz");

		SalesDetailVO sd = new SalesDetailVO();
		sd.setSalesDetailID("SALESDETAILID");
		sd.setSalesDetailRegDate("2020042313443000");
		sd.setSalesID("SALESID_1000000");
		sd.setMenuName("샐러드");
		sd.setMenuPrice("4000");
		sd.setMenuCount("3");
		
		
		System.out.println(sd.toString());
		
		try {
			biz.register(sd);
			System.out.println("salesDetail Register Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

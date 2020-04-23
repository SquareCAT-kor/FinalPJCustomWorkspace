package app_sales;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesVO;

/*
 * DELETE FROM CONTAINER WHERE CONID = #{conID}
 */
public class salesDelete {


	@Autowired
	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesVO> biz = (Biz<String, SalesVO>) factory.getBean("salesbiz");
		SalesVO sales = new SalesVO();
		sales = biz.get("SALESID_1000001");
		System.out.println(sales);
		System.out.println(sales.getSalesID());
		String test = sales.getSalesID();
		try {
			biz.remove(test);
			System.out.println("sales delete Done");
			System.out.println(biz.get());
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

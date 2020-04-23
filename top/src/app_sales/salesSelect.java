package app_sales;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesVO;


/*
 * 	SELECT * FROM CONTAINER WHERE conID=#{conID}
 */

public class salesSelect {

	@Autowired
	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesVO> biz = (Biz<String, SalesVO>) factory.getBean("salesbiz");

		SalesVO sales = new SalesVO();

		try {
			sales = biz.get("SALESID_1000000");
			System.out.println(sales);
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

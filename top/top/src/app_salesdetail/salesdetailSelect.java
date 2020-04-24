package app_salesdetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesDetailVO;


/*
 * 	SELECT * FROM CONTAINER WHERE conID=#{conID}
 */

public class salesdetailSelect {

	@Autowired
	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesDetailVO> biz = (Biz<String, SalesDetailVO>) factory.getBean("salesdetailbiz");

		SalesDetailVO sd = new SalesDetailVO();

		try {
			sd = biz.get("SALESDETAILID_3");
			System.out.println(sd);
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

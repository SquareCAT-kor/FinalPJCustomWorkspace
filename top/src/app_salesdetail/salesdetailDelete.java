package app_salesdetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesDetailVO;

/*
 * DELETE FROM CONTAINER WHERE CONID = #{conID}
 */
public class salesdetailDelete {


	@Autowired
	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesDetailVO> biz = (Biz<String, SalesDetailVO>) factory.getBean("salesdetailbiz");
		SalesDetailVO sd = new SalesDetailVO();
		sd = biz.get("SALESDETAILID_2");
		System.out.println(sd);
		System.out.println(sd.getSalesDetailID());
		String test = sd.getSalesDetailID();
		try {
			biz.remove(test);
			System.out.println("salesDetail delete Done");
			System.out.println(biz.get());
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

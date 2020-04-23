package app_salesdetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesDetailVO;

public class salesdetailUpdate {

	@Autowired
	public static void main(String[] args) {
		/*
		 * UPDATE SALESDETAIL SET SALESDETAILREGDATE = #{salesDetailRegDate}, SALESID = #{salesID},
		MENUNAME = #{menuName}, MENUPRICE = #{menuPrice}, MENUCOUNT = #{menuCount}
		WHERE SALESDETAILID = #{salesDetailID}	
	</update>
		 * 
		 */

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesDetailVO> biz = (Biz<String, SalesDetailVO>) factory.getBean("salesdetailbiz");

		SalesDetailVO sd = new SalesDetailVO();
	
		sd.setSalesDetailRegDate("2020042314380000");
		sd.setMenuName("아메리카노룽고");
		sd.setMenuPrice("4500");
		sd.setMenuCount("5");
		sd.setSalesID("SALESID_1000000");
		sd.setSalesDetailID("SALESDETAILID_3");
		System.out.println(sd.toString());


		try {
			biz.modify(sd);
			System.out.println("salesdetail modify Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

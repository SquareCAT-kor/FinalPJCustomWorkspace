package app_sales;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesVO;

public class salesUpdate {

	@Autowired
	public static void main(String[] args) {
		/*
		 * <update id="update" parameterType="sales">
		UPDATE SALES SET SALESREGDATE = #{salesRegDate},TOTSALES = #{totSales}
		WHERE SALESID = #{salesID}	
	</update>
		 * 
		 */

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesVO> biz = (Biz<String, SalesVO>) factory.getBean("salesbiz");

		SalesVO sales = new SalesVO();
	
		sales.setSalesRegDate("2020042313490000");
		sales.setTotSales(50);
		sales.setSalesID("SALESID_1000000");
		System.out.println(sales.toString());


		try {
			biz.modify(sales);
			System.out.println("sales modify Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

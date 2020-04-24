package app_sales;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesVO;

public class salesSelectDailySales {

	@Autowired
	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesVO> biz = (Biz<String, SalesVO>) factory.getBean("salesbiz");

		ArrayList<SalesVO> salesList;
		ArrayList<SalesVO> salesList2 = new ArrayList<SalesVO>();

		try {
			salesList = biz.getdailysales();
//			for (int i = 0; i < salesList.size(); i++) {
//				String dailysales = salesList.get(i).getDailySales();
//				String revenue = salesList.get(i).getRevenue();
//				SalesVO vo = new SalesVO(dailysales, revenue);
//				System.out.println("dailysales :" + dailysales + " revenue : " + revenue);
//				System.out.println(vo);
//				salesList2.add(vo);
//			}
//			System.out.println("salesList2 : " + salesList2);
			System.out.println("salesList : " + salesList);

			System.out.println("sales selectdaily Done");
		} catch (

		Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

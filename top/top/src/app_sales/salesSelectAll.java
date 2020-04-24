package app_sales;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesVO;

public class salesSelectAll {

	@Autowired
	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesVO> biz = (Biz<String, SalesVO>) factory.getBean("salesbiz");

		ArrayList<SalesVO> salesList;
		JSONArray ja = new JSONArray();

		try {
			salesList = biz.get();
			for (SalesVO data : salesList) {

				JSONObject jo = new JSONObject();
				jo.put("salesID", data.getSalesID());
				jo.put("salesRegDate", data.getSalesRegDate());
				jo.put("totSales", data.getTotSales());
				jo.put("chainID", data.getChainID());
				System.out.println(jo.toString());
				ja.add(jo);
			}
		
			System.out.println("sales selectAll Done");
			System.out.println(ja.toString());
			System.out.println(ja.get(0));
			System.out.println(ja.get(1));
		} catch (

		Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

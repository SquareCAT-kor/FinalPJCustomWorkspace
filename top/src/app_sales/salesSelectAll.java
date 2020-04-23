package app_sales;

import java.util.ArrayList;

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

		ArrayList <SalesVO> salesList;
		
		try {
			salesList = biz.get();
			for(SalesVO i : salesList) {
				System.out.println(i);
			}
			System.out.println("sales selectAll Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

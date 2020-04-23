package app_salesdetail;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.frame.Biz;
import top.vo.SalesDetailVO;

public class salesdetailSelectAll {

	@Autowired
	public static void main(String[] args) {

		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");

		Biz<String, SalesDetailVO> biz = (Biz<String, SalesDetailVO>) factory.getBean("salesdetailbiz");

		ArrayList <SalesDetailVO> sdList;
		
		try {
			sdList = biz.get();
			for(SalesDetailVO i : sdList) {
				System.out.println(i);
			}
			System.out.println("salesdetail selectAll Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		factory.close();

	}

}

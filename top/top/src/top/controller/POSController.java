package top.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import top.frame.Biz;
import top.vo.SalesDetailVO;
import top.vo.SalesVO;

@Controller
public class POSController {

	@Resource(name = "salesbiz")
	Biz<String, SalesVO> salesbiz;

	@Resource(name = "salesdetailbiz")
	Biz<String, SalesDetailVO> salesdetailbiz;

	SalesDetailVO sd;
	SalesVO sales;
	
	String tempChainID = "";

	String regdate = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));

	// 안드로이드 POS 에서 오는 JSON 받기 //
	@RequestMapping(value = "/pos.top", method = RequestMethod.POST)
	@ResponseBody
	public String getData(HttpServletRequest request, HttpServletResponse response, @RequestBody JSONObject jo) {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		System.out.println("getData From Sales. Android. ---Start");

		System.out.println(jo);

		Map sjo = (Map) (jo.get("jsonData"));

		String saleDate = (String) sjo.get("saleDate");
		int saleCount = (int) sjo.get("saleCount");
		int saleCost = (int) sjo.get("saleCost");
		String saleAdmin = (String) sjo.get("saleAdmin");

		System.out.println("saleData: " + saleDate + " saleCount: " + saleCount + " saleCost :" + saleCost
				+ " saleAdmin :" + saleAdmin);

		String temp = request.getParameter("jsonData");

		ArrayList<SalesVO> slist = new ArrayList<SalesVO>();

		String result = "success";

		return result;
	}

	@RequestMapping(value = "/posorder.top", method = RequestMethod.POST)
	@ResponseBody
	public String orderData(HttpServletRequest request, HttpServletResponse response, @RequestBody JSONObject jo) {
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		System.out.println("getOrderData From Android. ---Start");

		System.out.println("getJsondata:" + jo);

		Map sjo = (Map) (jo.get("jsonData"));

		String orderDate = (String) sjo.get("orderDate");
		int orderCount = (int) sjo.get("orderCount");
		int orderCost = (int) sjo.get("orderCost");
		String orderNo = (String) sjo.get("orderNO");
		String chainID = (String) sjo.get("chainID");

		System.out.println("chainID : " + chainID);
		sales = new SalesVO();

//		sales = salesbiz.getbychain(chainID);
		// orderNo 로 넣어도 Sequence 로적용된다. -> SalesDetail 에 어떻게 SaelsID를 넣어주지? //
		sales.setSalesID(orderNo);

		sales.setChainID(chainID);
		sales.setTotSales(orderCost);
		sales.setSalesRegDate(regdate);
		insertSaleData(sales);

		System.out.println("get OrderData : " + "orderDate : " + orderDate + " orderCount : " + orderCount
				+ "orderCost : " + orderCost + " orderNo " + orderNo);

		String result = "success";

		return result;
	}

	@RequestMapping(value = "/posorderdetail.top", method = RequestMethod.POST)
	@ResponseBody
	public String orderDetailData(HttpServletRequest request, HttpServletResponse response, @RequestBody String odja) {
		System.out.println("orderDetailaget Start");
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		System.out.println("getOrderDetailData from Android. ---Start");

		System.out.println("getOrderDetail:" + odja);

		JSONObject jo = new JSONObject();
		JSONArray ja = new JSONArray();
		JSONParser parser = new JSONParser();
		
		try {
			ja = (JSONArray) parser.parse(odja);
		
			System.out.println("Parsed JA:" + ja.get(0));
			System.out.println("JA TYPE:" +ja.get(0).getClass());
			for(int i = 0; i < ja.size(); i++) {
				jo = (JSONObject) ja.get(i);
				SalesDetailVO sd = new SalesDetailVO();
				String menuID = (String)jo.get("menuID");
				String menuName = (String)jo.get("menuName");
				Long menuCost = (Long) jo.get("menuCost");
				Long menuCount = (Long) jo.get("menuCount");
				String chainID = (String)jo.get("chainID");
				String salesID = salesbiz.getbychain(chainID).getSalesID();
				
				sd.setMenuID(menuID);
				sd.setMenuCount(menuCount+"");
				sd.setMenuName(menuName.replace(" ", ""));
				sd.setMenuPrice(menuCost+"");
				sd.setSalesDetailRegDate(regdate);
				sd.setSalesDetailID("saleDetailId");
				sd.setSalesID(salesID);
				
				
				insertSalesDetailData(sd);
			
				//System.out.println("MenuID : "+ menuId + "MenuCOST" + menuCost + "menuCount" + menuCount + "chainID" + chainId);
			}
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		String result = null;

		return result;
	}

	@RequestMapping(value = "/posgetdata.top", method = RequestMethod.GET)
	@ResponseBody
	public String getSalesData(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("String");
		response.setCharacterEncoding("UTF-8");
		System.out.println("getRequest From Android : get All Sales DATA  ---Start");

		ArrayList<SalesVO> salesList = new ArrayList<SalesVO>();
		
		JSONArray salesJA = new JSONArray();
		try {
			salesList = salesbiz.get();
		
			for (SalesVO data : salesList) {
				JSONObject jo = new JSONObject();
				jo.put("salesID", data.getSalesID());
				jo.put("salesRegDate", data.getSalesRegDate());
				jo.put("totSales", data.getTotSales());
				jo.put("chainID", data.getChainID());
				salesJA.add(jo);
			}
			
			System.out.println("sales selectAll Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("Send to Android salesJA" + salesJA.toString());

		return salesJA.toString();
	}
	
	@RequestMapping(value = "/posgetdailydata.top", method = RequestMethod.GET)
	@ResponseBody
	public String getDailyData(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("String");
		response.setCharacterEncoding("UTF-8");
		System.out.println("getRequest From Android : get Daily Sales DATA  ---Start");

		ArrayList<SalesVO> salesList2 = new ArrayList<SalesVO>();
		
		JSONArray salesJA2 = new JSONArray();
		try {
			salesList2 = salesbiz.getdailysales();
			for( SalesVO data2 : salesList2) {
				JSONObject jo2 = new JSONObject();
				jo2.put("dailySales",data2.getDailySales());
				jo2.put("revenue",data2.getRevenue());
				salesJA2.add(jo2);
			}
	
			System.out.println("DailySales selectAll Done");
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("Send to Android salesJA2" + salesJA2.toString());

		return salesJA2.toString();
	}
	
	

	// 주문정보 넣는 함수 . 메뉴는 미포함 //
	public void insertSaleData(SalesVO sales) {

		try {
			salesbiz.register(sales);
			System.out.println("salesData Inserted");
		} catch (Exception e) {
			System.out.println("salesData Inserting Failed");
			e.printStackTrace();
		}
	}

	// 메뉴 가격, 정보 포함 상세정보 넣는 함수 //
	public void insertSalesDetailData(SalesDetailVO sd) {
		try {
			salesdetailbiz.register(sd);
			System.out.println("salesDetailData Inserted");
		} catch (Exception e) {
			System.out.println("salesDetaildata Inserting Failed");
			e.printStackTrace();
		}

	}

}

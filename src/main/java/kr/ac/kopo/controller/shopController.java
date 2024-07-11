package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.GoodsDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.GoodsVO;

public class shopController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String itemType = request.getParameter("itemType");
		int itemPrice = Integer.parseInt(request.getParameter("itemPrice"));
		GoodsVO goods = new GoodsVO();
		goods.setItemType(itemType);
		goods.setItemPrice(itemPrice);

		System.out.println(itemType);
		System.out.println(itemPrice);
		
		int prevPage = 1;
		int lastPage = 6;
		
		if(request.getParameter("Page")!=null) {
			prevPage = (Integer.parseInt(request.getParameter("Page"))*6)-5;
			lastPage = (Integer.parseInt(request.getParameter("Page"))*6);
		}
		
		System.out.println("DB 들어갈 페이지 : "+prevPage+" "+lastPage);

		goods.setPrevPage(prevPage);
		goods.setLastPage(lastPage);
		goods.setItemType(itemType);
		goods.setItemPrice(itemPrice);
		
		GoodsDAObatis goodsbatis = new GoodsDAObatis();
		List<GoodsVO> list = new ArrayList<>();
		
		list = goodsbatis.shopList(goods);
		
		request.setAttribute("shopList", list);
		request.setAttribute("itemType", itemType);
		request.setAttribute("itemPrice", itemPrice);
		return "/shop.jsp";
	}
}

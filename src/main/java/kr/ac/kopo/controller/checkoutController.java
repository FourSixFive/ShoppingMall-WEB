package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.GoodsVO;
import kr.ac.kopo.vo.MemberVO;

public class checkoutController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("userInfo");
		
		if(member==null) {
			return "/unlogged.jsp";
		}
		List<GoodsVO> goodsList = (List<GoodsVO>)session.getAttribute("goodsList");
		
		int priceSum = 0;
		for(GoodsVO goodsprice : goodsList) {
			priceSum += (goodsprice.getItemPrice()*goodsprice.getItemQuantity());
		}
		
		request.setAttribute("cartList", goodsList);
		request.setAttribute("priceSum", priceSum);
		request.setAttribute("userdetail", member);
		
		return "/checkout.jsp";
	}
}

package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.GoodsDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.GoodsVO;
import kr.ac.kopo.vo.MemberVO;

public class cartController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("userInfo");
		
		if(member==null) {
			return "/unlogged.jsp";
		}
		
		GoodsDAObatis goodsbatis = new GoodsDAObatis();
		List<GoodsVO> goodsList = new ArrayList<>();
		goodsList = goodsbatis.basketinfo(member.getId());
		
		int priceSum = 0;
		for(GoodsVO goodsprice : goodsList) {
			priceSum += (goodsprice.getItemPrice()*goodsprice.getItemQuantity());
		}
		
		session.setAttribute("goodsList", goodsList);
		request.setAttribute("priceSum", priceSum);
		session.setAttribute("basketCnt", goodsList.size());
		
		return "/cart.jsp";
	}
}

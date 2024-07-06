package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.GoodsDAObatis;
import kr.ac.kopo.dao.MemberDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.GoodsVO;
import kr.ac.kopo.vo.MemberVO;

public class orderCartController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int billingNumber = (int)(Math.random() * 899999999) + 100000000;
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("userInfo");
		if(member==null) {
			return "/unlogged.jsp";
		}
		request.setCharacterEncoding("utf-8");
		
		int sum = Integer.parseInt(request.getParameter("sum"));
		List<GoodsVO> orderList = (List<GoodsVO>)session.getAttribute("goodsList");
		
		for(GoodsVO insertList : orderList) {
			insertList.setBillingNumber(billingNumber);
			insertList.setUserId(member.getId());
		}
		
		MemberDAObatis memberbatis = new MemberDAObatis();
		
		int chk = memberbatis.insertOrder(member, sum, orderList);

		System.out.println("orderCartController : "+chk);
		
		GoodsDAObatis goodsbatis = new GoodsDAObatis();
		List<GoodsVO> orderInfo = goodsbatis.orderInfo(member.getId());
		List<GoodsVO> goodsList = goodsbatis.basketinfo(member.getId());
		
		session.setAttribute("orderInfo", orderInfo);
		session.setAttribute("orderCartCnt", orderInfo.size());
		
		session.setAttribute("goodsList", goodsList);
		session.setAttribute("basketCnt", goodsList.size());
		
		request.setAttribute("orderCheck", chk);
		
		return "/orderCartCheck.jsp";
	}

}

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

public class loginController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");

		String userid = request.getParameter("userID");
		String password = request.getParameter("userPWD");
		
		MemberVO member = new MemberVO();
		MemberVO member2 = new MemberVO();
		MemberDAObatis memberbatis = new MemberDAObatis();
		
		member.setId(userid);
		member.setPassword(password);
		member2 = memberbatis.passwordCheck(member);
		if(member2 != null){
			
			member = memberbatis.userInfo(userid);
			session.setAttribute("userInfo", member);
			
			GoodsDAObatis goodsbatis = new GoodsDAObatis();
			
			List<GoodsVO> orderInfo = goodsbatis.orderInfo(member.getId());
			session.setAttribute("orderInfo", orderInfo);
			session.setAttribute("orderCartCnt", orderInfo.size());
			
			List<GoodsVO> goodsList = goodsbatis.basketinfo(userid);
			session.setAttribute("goodsList", goodsList);
			session.setAttribute("basketCnt", goodsList.size());
			
			return "StoneAIsland.do";
		}else{
			request.setAttribute("loginUserID", member);
			return "/loginFail.jsp";
		}
	}
}
package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.GoodsDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.GoodsVO;

public class ShoppingMallMainController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		GoodsDAObatis goodsbatis = new GoodsDAObatis();
		List<GoodsVO> randomList = goodsbatis.randomShow();
		request.setAttribute("randomList", randomList);
		
		return "/index.jsp";
	}
}

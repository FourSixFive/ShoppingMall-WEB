package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.BoardDAObatis;
import kr.ac.kopo.dao.GoodsDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.BoardVO;
import kr.ac.kopo.vo.GoodsVO;

public class productSingleController implements Controller {
	
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String code = request.getParameter("itemCode");
		GoodsDAObatis goodsbatis = new GoodsDAObatis();
		GoodsVO singlegoods = new GoodsVO();
		
		singlegoods = goodsbatis.singleItem(code);
		singlegoods.setViewCnt(singlegoods.getViewCnt()+1);
		goodsbatis.viewCnt(singlegoods);
		
		List<BoardVO> reviewList = new ArrayList<>();
		
		BoardDAObatis boardbatis = new BoardDAObatis();
		
		reviewList = boardbatis.reviewList(code);
		
		
		if(reviewList != null) {
			request.setAttribute("reviewList", reviewList);
			request.setAttribute("reviewListCnt", reviewList.size());
		}
		request.setAttribute("singlegoods", singlegoods);
		
		return "/product-single.jsp";
	}
}

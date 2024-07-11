package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.MemberDAObatis;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.MemberVO;

public class EditUserInfoController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO)session.getAttribute("userInfo");
		
		request.setCharacterEncoding("utf-8");
		String name;
		String phone;
		String email;
		int postCode;
		String basicAddr;
		String detailAddr;
		int point = user.getPoint();
		
		if(request.getParameter("editName") != null) {
			name = request.getParameter("editName");
		}else {
			name = user.getName();
		}
		
		if(request.getParameter("editPhone") != null) {
			phone = request.getParameter("editPhone");
		}else {
			phone = user.getPhone();
		}
		
		if(request.getParameter("editEmail") != null) {
			email = request.getParameter("editEmail");
		}else {
			email = user.getEmail();
		}
		
		if(request.getParameter("editPostCode") != null) {
			postCode = Integer.parseInt(request.getParameter("editPostCode"));
		}else {
			postCode = user.getPostcode();
		}
		
		if(request.getParameter("editBasicAddr") != null) {
			basicAddr = request.getParameter("editBasicAddr");
		}else {
			basicAddr = user.getBasicAddr();
		}
		
		if(request.getParameter("editDetailAddr") != null) {
			detailAddr = request.getParameter("editDetailAddr");
		}else {
			detailAddr = user.getDetailAddr();
		}
		
		MemberVO member = new MemberVO();
		member.setName(name);
		member.setPhone(phone);
		member.setEmail(email);
		member.setPostcode(postCode);
		member.setBasicAddr(basicAddr);
		member.setDetailAddr(detailAddr);
		member.setPoint(point);
		
		MemberDAObatis memberbatis = new MemberDAObatis();
		memberbatis.updateUserInfo(member);
		session.setAttribute("userInfo", member);
		
		return "myPage.do";
	}

}

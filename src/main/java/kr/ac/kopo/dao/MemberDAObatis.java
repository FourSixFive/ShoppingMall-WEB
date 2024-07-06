package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.vo.GoodsVO;
import kr.ac.kopo.vo.MemberVO;

public class MemberDAObatis {

	private SqlSession session;

	public MemberDAObatis() {
		session = new MyBatisConfig().getInstance();
	}

	
	/**
	 * 
	 * @param userID
	 * @return 로그인한 유저정보를 사이트 어디서든 확인해볼까
	 */
	public MemberVO userInfo(String userID) {
		MemberVO member = new MemberVO(); 
		try {
			member = session.selectOne("member.dao.memberDAO.loginUserInfo", userID);
		} catch (Exception e) {
			System.out.println("userInfo() 실패");
			e.printStackTrace();
			member = null;
		}
		return member;
	}
	
	
	public void insertUserInfo(MemberVO member) {
		try {
			session.insert("member.dao.memberDAO.insertUserInfo", member);
			session.commit();
		} catch (Exception e) {
			System.out.println("insertUserInfo() 실패");
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 
	 * @param member
	 * @return 비밀번호 틀리면 로그인을 못해요
	 */
	public MemberVO passwordCheck(MemberVO member) {
		
		MemberVO memberCheck = new MemberVO();
		
		try {
			memberCheck = session.selectOne("member.dao.memberDAO.loginCheck", member);
			return memberCheck;
		} catch (Exception e) {
			System.out.println("passwordCheck() 실패");
			e.printStackTrace();
			return null;
		}
	}
	
	
	/**
	 * 
	 * @param member
	 */
	public void addPoint(MemberVO member) {
		
		try {
			session.update("member.dao.memberDAO.addPoint",member);
			session.commit();
		} catch (Exception e) {
			System.out.println("addPoint() 실패");
			e.printStackTrace();
		}
	}
	
	
	////////////////////////////////////////////////////////////////////
	
	
	/**
	 * 
	 * @param member
	 * @param totalPrice
	 * @param goodsList
	 * @return 오더테이블 집어넣기, 제발 오류안뜨게 해주세요
	 */
	public int insertOrder(MemberVO member, int totalPrice, List<GoodsVO> goodsList) {
		
		int chk = 0;
		
		try {
			
			int userPoint = this.userInfo(member.getId()).getPoint();
			System.out.println("insertOrder에서 출력 member : "+member);
			System.out.println("insertOrder에서 출력 totalPrice : "+totalPrice);
			System.out.println("insertOrder에서 출력 goodsList : "+goodsList);
			
			if(userPoint >= totalPrice) {
				member.setPoint(userPoint-totalPrice);
				session.update("member.dao.memberDAO.deletePoint",member);
				chk = 1;	//회원 정보 갱신만 성공 시 = 1
				
				for(GoodsVO goods : goodsList) {
					System.out.println("insertOrder For문 안에서 출력 goods : "+goods);
					session.update("goods.dao.goodsDAO.goodsQuantity", goods);
				}
				chk = 2;	//구매한 아이템 수량만큼 테이블에서 차감 = 2
				
				for(GoodsVO goods : goodsList) {
					System.out.println("insertOrder For문 안에서 출력 goods : "+goods);
					session.insert("goods.dao.goodsDAO.insertOrder",goods);
				}
				session.delete("goods.dao.goodsDAO.afterOrder",member.getId());
				chk = 3;	//orderInfo 테이블에 삽입, 장바구니는 삭제 = 3
				
				session.commit();
			}else {
				chk = 4;	//총합 가격보다 돈이 없음 = 4
			}
			
		} catch (Exception e) {
			session.rollback();
			System.out.println("insertOrder() 실패");
			e.printStackTrace();
		}
		return chk;		//죄다 실패 시 = 0
	}

}

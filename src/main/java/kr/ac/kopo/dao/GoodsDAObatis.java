package kr.ac.kopo.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.vo.GoodsVO;

public class GoodsDAObatis {

	private SqlSession session;

	public GoodsDAObatis() {
		session = new MyBatisConfig().getInstance();
	}
	
	/**
	 * 
	 * @param userID
	 * @return ID에 맞는 장바구니 정보반환
	 */
	public List<GoodsVO> basketinfo(String userID) {
		
		try {
			List<GoodsVO> list = session.selectList("goods.dao.goodsDAO.basketInfo", userID);
			return list;
		} catch (Exception e) {
			System.out.println("basketinfo 실패");
			e.printStackTrace();
			return null;
		}
	}

	
	/**
	 * 
	 * @param goods
	 * @return 장바구니에 추가 되었는지 확인(boolean)
	 */
	public boolean insertBasket(GoodsVO goods) {
		
		boolean chk = false;
		
		List<GoodsVO> list = this.basketinfo(goods.getUserId());
		
		for(GoodsVO goodschk : list) {
			if((goodschk.getItemCode().equals(goods.getItemCode())) || (goodschk.getItemSize().equals(goods.getItemSize()))) {
				this.updateBasket(goods);
				return chk;
			}
		}
		
		try {
			session.insert("goods.dao.goodsDAO.insertBasket", goods);
			session.commit();
			chk = true;
		} catch (Exception e) {
			System.out.println("insertBasket 실패");
			e.printStackTrace();
			return chk;
		}
		return chk;
	}
	
	
	/**
	 * 
	 * @param goods 장바구니에 같은물건이 있으면 빼내서 수량추가
	 */
	public void updateBasket(GoodsVO goods) {
		
		try {
			session.update("goods.dao.goodsDAO.updateBasket", goods);
			session.commit();
		} catch (Exception e) {
			System.out.println("updateBasket 실패");
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 
	 * @param itemCode
	 */
	public void deleteBasket(String itemCode) {
		
		try {
			session.delete("goods.dao.goodsDAO.deleteBasket", itemCode);
			session.commit();
		} catch (Exception e) {
			System.out.println("deleteBasket 실패");
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 
	 * @param goods
	 * @return 임시 메소드
	 */
	public void insertgoods(GoodsVO goods) {
		try {
			session.insert("goods.dao.goodsDAO.insertGoods", goods);
			session.commit();
		} catch (Exception e) {
			System.out.println("insertGoods 실패");
			e.printStackTrace();
		}
	}
	
	
	/**
	 * 
	 * @param pageCnt
	 * @return index.jsp 화면에서 랜덤한 상품정보 반환
	 */
	public List<GoodsVO> randomShow() {
		
		try {
			List<GoodsVO> list = session.selectList("goods.dao.goodsDAO.randomShow");
			return list;
		} catch (Exception e) {
			System.out.println("randomShow 실패");
			e.printStackTrace();
			return null;
		}
	}
	
	
	/**
	 * 
	 * @return index.jps 화면에서 ViewCnt 높은 순 상품정보 반환
	 */
	public List<GoodsVO> bestShow() {
		
		try {
			List<GoodsVO> list = session.selectList("goods.dao.goodsDAO.bestShow");
			return list;
		} catch (Exception e) {
			System.out.println("bestShow 실패");
			e.printStackTrace();
			return null;
		}
	}
	
	
	/**
	 * 
	 * @param goods
	 */
	public void viewCnt(GoodsVO goods) {
		try {
			session.update("goods.dao.goodsDAO.viewCntUpdate", goods);
			session.commit();
		} catch (Exception e) {
			System.out.println("viewCnt 실패");
			e.printStackTrace();
		}
		
	}
	
	
	/**
	 * 
	 * @param goods
	 * @return 전체상품 페이지에서 페이지 당 N개씩 보여주기
	 */
	public List<GoodsVO> shopList(GoodsVO goods) {
		try {
			List<GoodsVO> list = session.selectList("goods.dao.goodsDAO.shopList", goods);
			return list;
		} catch (Exception e) {
			System.out.println("shopList 실패");
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	/**
	 * 
	 * @param itemCode
	 * @return 아이템 코드 값을 입력받아 해당 아이템의 정보 반환
	 */
	public GoodsVO singleItem(String itemCode) {
			
		GoodsVO goods = new GoodsVO();
		
		try {
			goods = session.selectOne("goods.dao.goodsDAO.singleInfo", itemCode);
			return goods;
		} catch (Exception e) {
			System.out.println("singleItem 실패");
			e.printStackTrace();
			return null;
		}
	}
	
	
	public List<GoodsVO> orderInfo(String userID) {
		
		List<GoodsVO> list = new ArrayList<>();
		
		try {
			list = session.selectList("goods.dao.goodsDAO.orderInfo",userID);
			return list;
		} catch (Exception e) {
			System.out.println("orderInfo() 실패");
			e.printStackTrace();
		}
		return list;
	}
}

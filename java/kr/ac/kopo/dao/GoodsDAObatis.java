package kr.ac.kopo.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.vo.GoodsVO;

public class GoodsDAObatis {

	private SqlSession session;

	public GoodsDAObatis() {
		session = new GoodsBatisConfig().getInstance();
	}
	
	/**
	 * 
	 * @param userID
	 * @return ID에 맞는 장바구니 정보반환
	 */
	public List<GoodsVO> basketinfo(String userID) {
		
		try {
			List<GoodsVO> list = session.selectList("goods.dao.goodsDAO.basketInfo",userID);
			return list;
		} catch (Exception e) {
			return null;
		}
	}
	
	/**
	 * 
	 * @param itemCode
	 * @param userID
	 * @return 잘 들어갔는지 확인(Integer)
	 */
	public int insertBasket(GoodsVO goods) {
		
		List<GoodsVO> list = new ArrayList<>();
		
		list = this.basketinfo(goods.getBrandName());
		
		for(GoodsVO goodschk : list) {
			if(goodschk.getBrandCode() == goods.getBrandCode()) {
				goods.setItemQuantity(goodschk.getItemQuantity()+1);
				break;
			}
		}
		
		int chk = 0;
		
		try {
			session.insert("goods.dao.goodsDAO.insertBasket", goods);
			session.commit();
			chk = 1;
		} catch (Exception e) {
			chk = 0;
		}
		return chk;
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
			System.out.println("insert성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @param pageCnt
	 * @return index.jsp 화면에서 가지고 있는 옷들 중 랜덤한 정보 반환
	 */
	public List<GoodsVO> randomShow() {
		
		try {
			List<GoodsVO> list = session.selectList("goods.dao.goodsDAO.randomShow");
			return list;
		} catch (Exception e) {
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
			
		} catch (Exception e) {
			return null;
		}
		return goods;
	}
}

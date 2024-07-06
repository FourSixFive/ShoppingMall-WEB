package kr.ac.kopo.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.vo.BoardVO;

public class BoardDAObatis {

	private SqlSession session;

	public BoardDAObatis() {
		session = new MyBatisConfig().getInstance();
	}
	
	
	/**
	 * 
	 * @param itemCode
	 * @return 상품마다 달린 리뷰목록 들고오기
	 */
	public List<BoardVO> reviewList(String itemCode) {
		
		List<BoardVO> list = new ArrayList<>();
		try {
			list = session.selectList("board.dao.boardDAO.reviewList", itemCode);
			return list;
		} catch (Exception e) {
			System.out.println("reviewList 실패");
			e.printStackTrace();
			return null;
		}
	}
	
	
	public void insertReview(BoardVO board) {
		try {
			session.insert("board.dao.boardDAO.insertReview", board);
			session.commit();
		} catch (Exception e) {
			System.out.println("insertReview 실패");
			e.printStackTrace();
		}
	}
	
	
	public void deleteReview(int no) {
		try {
			session.delete("board.dao.boardDAO.deleteReview", no);
			session.commit();
		} catch (Exception e) {
			System.out.println("insertReview 실패");
			e.printStackTrace();
		}
	}
	
	
	public void insertRequest(BoardVO board) {
		try {
			session.insert("board.dao.boardDAO.insertRequest", board);
			session.commit();
		} catch (Exception e) {
			System.out.println("insertRequest 실패");
			e.printStackTrace();
		}
	}
	
}

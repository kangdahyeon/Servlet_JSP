package spms.dao;

import java.util.List;

import spms.vo.Review;

public interface ReviewDAO {
	public List<Review> selectList() throws Exception;
	public int insert(Review review) throws Exception;
	public int delete(int review_no) throws Exception;
	public Review selectOne(int review_no) throws Exception;
	public int update(Review review) throws Exception;
	public List<Review> mySelectList(String email) throws Exception;
}	

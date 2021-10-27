package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ReviewDAO;
import spms.vo.Review;
import spms.vo.User;

@Component("/mypage.do")
public class MyPageController implements Controller{
	
	ReviewDAO reviewDAO;
	
	public MyPageController setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
		return this;
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		
		HttpSession session = (HttpSession)model.get("session");
		User user = (User)session.getAttribute("User");
		String Email = user.getEmail();
		
		
		model.put("myReviews", reviewDAO.mySelectList(Email));
			
			return "/user/MyPage.jsp";
			
		
	}

}

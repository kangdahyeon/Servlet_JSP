package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ReviewDAO;
import spms.vo.Review;
import spms.vo.User;

@Component("/review.do")
public class ReviewController implements Controller, DataBinding{
	
	ReviewDAO reviewDAO;
	
	public ReviewController setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"review", spms.vo.Review.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Review review = (Review)model.get("review");
		
		HttpSession session = (HttpSession)model.get("session");
		User user = (User)session.getAttribute("User");
		String name = user.getName();
		review.setName(name);
			System.out.println("db들어가나 전");
			reviewDAO.insert(review);
			System.out.println("db들어가나 후");
			return "redirect:/main.do";
			
		
	}

}

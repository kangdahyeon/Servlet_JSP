package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ReviewDAO;
import spms.vo.Review;
import spms.vo.User;

@Component("/boardDetail.do")
public class BoardDetailController implements Controller {

	@Override
	public String execute(Map<String, Object> model) throws Exception {
		
		return "/project/BoardDetail.jsp";
	}
}

package spms.controller;

import java.util.Map;

import spms.annotation.Component;

@Component("/movie.do")
public class MovieController implements Controller {
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		
		return "/movie.jsp";
	}

}

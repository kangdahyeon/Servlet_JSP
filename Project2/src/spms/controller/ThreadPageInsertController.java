package spms.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ThreadDAO;
import spms.vo.NoticeThread;
import spms.vo.User;



@Component("/pageinsert.do")
public class ThreadPageInsertController implements Controller, DataBinding {
	ThreadDAO threadDAO;
	
	public ThreadPageInsertController setProjectDAO(ThreadDAO threadDAO) {
		this.threadDAO = threadDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"threadInfo", spms.vo.NoticeThread.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		NoticeThread nthread = (NoticeThread)model.get("nthread");
		
		
			
			return "/project/ThreadPageInsert.jsp";
	}
}

package com.synergy.auction.login.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.synergy.auction.login.service.LoginDao;
import com.synergy.auction.login.service.LoginService;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired 
	private LoginService loginService;
	
	/*로그인 처리*/
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpSession session,String id,String pw) {
		
		logger.debug("LoginController.login >>"+"id:"+id+"pw:"+pw);
		/*id,pw 검색*/
		String level = loginService.login(id,pw);
		/*id,pw일치하면 id,level세션설정*/
		if(level!=null) {
			session.setAttribute("id", id);
			session.setAttribute("level", level);
		}
		logger.debug("LoginController.login sessionId>>"+session.getAttribute("id"));
		logger.debug("LoginController.login sessionLevel>>"+session.getAttribute("level"));
		return "home";
	}
	
	/*일반회원,기부단체 회원가입 화면*/
	@RequestMapping(value = "/loginMain", method = RequestMethod.GET)
	public String donatorInsert() {
		return "login/login_main";
	}

	//로그아웃
	@RequestMapping(value= "/logout", method=RequestMethod.GET)  
	public String logout(HttpSession session) {  
		session.invalidate();  
		return "home";  
	}  
	
	//회원가입시 아이디 체크 @RequestBody는 POST방식으로 전달된 HTTP 요청 데이터의 BODY를 통으로 읽어오게 한다.
	//@ResponseBody는 뷰를 생성해서 내려주는 것이 아닌 JSON이나 XML등의 스트링 데이터를 넘겨줄때 사용한다.
	@RequestMapping(value= "/idcheck", method=RequestMethod.POST)  
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id) {
		int count = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		count = loginService.idcheck(id);
		map.put("cnt", count);
		return map;
	}  
}

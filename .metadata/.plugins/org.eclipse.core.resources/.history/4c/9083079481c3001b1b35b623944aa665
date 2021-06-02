package com.db.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.db.resume.ResumeVo;
import com.db.selfIntro.SelfIntroService;

@Controller
public class ResumeController {

	private SelfIntroService service;
	private ResumeVo resumeVo;

	//생성자에 service 주입
	public ResumeController(SelfIntroService service ,ResumeVo resumeVo) {
		this.service = service;
		this.resumeVo = resumeVo;
		
	}
	
	@RequestMapping("myPage/resume")
	public String resume(HttpSession session){
		
		//임시 테스트용 세션
		session.setAttribute("id", "test01");
		
		//이력서 테이블에 데이터가 있는지 체크하고 없으면 해당 아이디를 테이블 데이터에 넣음
		boolean result = resumeVo.resumeCheck((String)session.getAttribute("id"));
		//확인용
		System.out.println(result);
		return "myPage/resume";
	}
	
	@GetMapping("myPage/resumeUpdate")
	public String resomeUpdateGet(){
		
		return "myPage/resumeUpdate";
	}
	
	
	@PostMapping("myPage/resumeUpdate")
	public String resomeUpdate(HttpServletRequest request, HttpSession session ,Model model){
		
		System.out.println("test update");
		resumeVo.resumeUpdate(request,(String)session.getAttribute("id"));
		
		
		
		
		
		
		return "myPage/resume";
		
	}
		
		
}


package com.db.selfIntro;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public class SelfIntroVo {
	
	private SelfIntroService service;

	//생성자에 service 주입
	public SelfIntroVo(SelfIntroService service) {
		this.service = service;
	}

	public int selfIntroInsert(HttpServletRequest request) {
		
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String intro_text1 = request.getParameter("intro_text1");
		String intro_text2 = request.getParameter("intro_text2");
		String intro_text3 = request.getParameter("intro_text3");
		String intro_text4 = request.getParameter("intro_text4");
		
		int result = service.insertSelfIntro(new SelfIntroDto(id, intro_text1, intro_text2, intro_text3, intro_text4, title));		
		return result;
	}
	
}

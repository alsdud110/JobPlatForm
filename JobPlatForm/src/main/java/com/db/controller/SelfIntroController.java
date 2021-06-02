package com.db.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.db.selfIntro.SelfIntroService;
import com.db.selfIntro.SelfIntroVo;

@Controller
public class SelfIntroController {
	
	private SelfIntroService service;
	private SelfIntroVo selfIntroVo;

	//생성자에 service 주입
	public SelfIntroController(SelfIntroService service ,SelfIntroVo selfIntroVo) {
		this.service = service;
		this.selfIntroVo = selfIntroVo;
	}
	
	@PostMapping("main")
	public String postMain(Model model,HttpServletRequest request,HttpServletResponse response){
		
		//db insert test
		try {
			//test code : insert
			int result = selfIntroVo.selfIntroInsert(request);
			return "main/main";
		} catch (Exception e) {
			try {
				//incoding
				response.setContentType("text/html; charset=UTF-8");
				//alert
				PrintWriter out = response.getWriter();
				out.print("<script>alert('등록을 실패하였습니다.');</script>");
				out.flush();
			} catch (IOException e1) {
				System.out.println("er1");
			}
			
			return "main/main";
		}
	}
	
	@RequestMapping("test")
	public String test(Model model,HttpServletRequest request){
		
		
		
		return "myPage/selfIntro";
	}

}

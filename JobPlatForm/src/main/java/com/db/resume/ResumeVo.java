package com.db.resume;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public class ResumeVo {

	private ResumeService service;

	//생성자에 service 주입
	public ResumeVo(ResumeService service) {
		this.service = service;
	}
	
	//해당 아이디 이력서 입력여부 체크
	public boolean resumeCheck(String id) {
		
		//아이디에 대한 데이터가 있는지 체크
		boolean idCheck = service.checkId(id);
		
		System.out.println(idCheck);
		//해당 데이터가 없으면 id를 테이블에 등록
		if(!idCheck) {
			service.firstInsert(id);
		}
		return idCheck;
	}
	
	public int resumeUpdate(HttpServletRequest request,String id) {
		
		String license = request.getParameter("school1")+"/"+request.getParameter("school2");
		System.out.println(license);
		String academicBG = "";
		
		for(int i = 1; i <= 5; i++) {
			String result = request.getParameter("certificate"+Integer.toString(i));
			if(result.equals("")) {
				break;
			}else if(i == 5){
				academicBG += result+"/";
			}
			academicBG += result+"/";
		}
		System.out.println(academicBG);
		
		
		String career = request.getParameter("career");
		String res_img = request.getParameter("res_img");
		
		
//		service.updatetResome(new ResumeDto());
		
		return 1;
	}
	
}

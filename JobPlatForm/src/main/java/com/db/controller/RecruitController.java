package com.db.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.db.recruit.RecruitDto;
import com.db.recruit.RecruitService;

@Controller
@RequestMapping("/recruit")
public class RecruitController {
	@Autowired
	private RecruitService service;
	
	public RecruitController(RecruitService service) {
		this.service = service;
	}
	
	@RequestMapping("/{category}")
	public String getListByCategory(@PathVariable String category, Model model) {
		System.out.println(category);
		if(category.equals("All")) {
			List<RecruitDto> dto = service.selectAllRecruit();
			model.addAttribute("dto", dto);
			return "recruit/recruit_categoryList";
		}else {
			List<RecruitDto> dto = service.selectRecruitByCategory(category);
			model.addAttribute("dto", dto);
			return "recruit/recruit_categoryList";
		}
	}
	
	@RequestMapping("/detail/{no}")
	public String getDetailRecruit(@PathVariable int no, Model model, HttpSession session) {
		RecruitDto recruit = service.selectRecruitByNo(no);
		session.setAttribute("recruit", recruit);
		return "recruit/recruit_detail";
	}
	
	@RequestMapping("/search.do")
	public void searchBy(HttpServletRequest request, Model model, HttpServletResponse response) {
		String searchBy = request.getParameter("searchBy");
		String word = request.getParameter("word");
		System.out.println("searchBy : " + searchBy );
		System.out.println("word : " + word );
		
		List<RecruitDto> dto = service.selectRecruitBy(searchBy,word);
		JSONObject obj = new JSONObject();
		if(dto.size() == 0) {
			obj.put("code", 500);
			obj.put("message", "조회된 데이터가 없습니다.");
			obj.put("result", "None");
		}else {
			obj.put("code", 200);
			obj.put("message", "정상적으로 조회되었습니다.");
			obj.put("result", new JSONArray(dto));
		}
		try {
			System.out.println(obj.toString());
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().write(obj.toString());
			System.out.println(obj.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

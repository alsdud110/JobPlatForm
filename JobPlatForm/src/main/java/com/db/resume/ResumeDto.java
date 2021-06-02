package com.db.resume;

import lombok.Data;

@Data
public class ResumeDto {
	private String id;
	private String license;
	private String academicBG ;
	private String career;
	private String res_img;
	
	//생성자
	public ResumeDto(String id, String license, String academicBG, String career, String res_img) {
		this.id = id;
		this.license = license;
		this.academicBG = academicBG;
		this.career = career;
		this.res_img = res_img;
	}

	//기본 생성자
	public ResumeDto() {
		
	}
	
	
	
	
}

package com.db.selfIntro;

import lombok.Data;

@Data	//getter,setter 자동 생성
public class SelfIntroDto {
	
	private int introNo;	//자소서 no
	private String id;		//작성 id
	private String intro_text1;	//지원동기
	private String intro_text2;	//성장과정
	private String intro_text3;	//장단점
	private String intro_text4;	//입사포부
	private String title;	//자소서 저장 title
	
	
	//기본 생성자
	public SelfIntroDto() {
		
	};
	
	//데이터를 전체 받는 생성자
	public SelfIntroDto(String id, String intro_text1, String intro_text2 , String intro_text3, String intro_text4, String title) {
		this.id		 		 = id;
		this.intro_text1	 = intro_text1;
		this.intro_text2	 = intro_text2;
		this.intro_text3	 = intro_text3;
		this.intro_text4	 = intro_text4;
		this.title			 = title;
	}
	
	

}

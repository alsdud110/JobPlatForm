package com.db.resume;

import org.springframework.stereotype.Service;

import com.db.mapper.ResumeMapper;

@Service
public class ResumeService {
	
	//mapper 연결
	private ResumeMapper mapper;
		
	//생성자
	public ResumeService(ResumeMapper mapper) {
		this.mapper = mapper;
	}
	
	//등록
	public int insertResume(ResumeDto dto) {
		return mapper.insertResume(dto);
	}
	
	//수정
	public int updatetResome(ResumeDto dto) {
		return mapper.updatetResume(dto);
	}
	
	//id에 대한 회원 이력서 데이터
	public ResumeDto selectAllResume(String id){
		return mapper.selectAllResume(id);
	}
	
	//로그인한 아이디에 대한 데이터가 있는지 확인
	public boolean checkId(String id) {
		String checkId = mapper.checkId(id);
		boolean check = false;
		
		//받아온 데이터가 있으면 true
		if(id.equals(checkId)) {
			check = true;
		}
		return  check;
	}

	//해당 아이디에 대한 데이터가 없으면 id를 테이블에 등록
	public int firstInsert(String id) {
		return mapper.firstInsert(id);
	}
}

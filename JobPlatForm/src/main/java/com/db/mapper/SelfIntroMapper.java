package com.db.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.db.selfIntro.SelfIntroDto;

@Mapper
public interface SelfIntroMapper{
	
	public List<SelfIntroDto> selectAllSelfIntro();
	
	public int insertSelfIntro(SelfIntroDto dto);
	
	public int updateSelfIntro(SelfIntroDto dto);
	
	public int deleteSelfIntro(String introNo);

}

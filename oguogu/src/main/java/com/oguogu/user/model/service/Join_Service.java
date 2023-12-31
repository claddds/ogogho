package com.oguogu.user.model.service;

import com.oguogu.user.model.vo.User_VO;

public interface Join_Service {
	
	//닉네임 중복체크
	public int userNickNameChk(User_VO userVO);
	
	//아이디 중복 체크
	public int userIdChk(User_VO userVO);
	
	//이메일 중복 체크
	public int userEmailChk(User_VO userVO);
}

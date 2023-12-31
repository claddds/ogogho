package com.oguogu.lounge.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Lounge_Controller {

//	@Autowired
//	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/lounge_list.do")
	public ModelAndView loungetList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_list");
		// 페이징은 나중에
		return mv;
	}

	@RequestMapping("lounge/lounge_share_list.do")
	public ModelAndView loungeSharetList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_share_list");
		// 페이징은 나중에
		return mv;
	}
	
	@RequestMapping("lounge/lounge_recomm_list.do")
	public ModelAndView loungeRecommList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_recomm_list");
		// 페이징은 나중에
		return mv;
	}
	
	@RequestMapping("lounge/lounge_qna_list.do")
	public ModelAndView loungeQnatList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_qna_list");
		// 페이징은 나중에
		return mv;
	}
	
	@GetMapping("/lounge_insertForm.do")
	public ModelAndView loungeInsert(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_write");
		return mv;
	}
	
	@GetMapping("/lounge_updateForm.do")
	public ModelAndView loungeUpdate(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("lounge/lounge_update");
		return mv;
	}
	
}

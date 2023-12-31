package com.oguogu.report.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Report_Controller {

//	@Autowired
//	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/rep_list.do")
	public ModelAndView reptList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("rep/rep_list");
		// 페이징은 나중에
		return mv;
	}
	
	@GetMapping("/rep_insertForm.do")
	public ModelAndView repInsert(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("rep/rep_write");
		return mv;
	}
}

package com.project.npnc.admin.job.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.npnc.admin.job.model.dto.Job;
import com.project.npnc.admin.job.model.service.JobService;
import com.project.npnc.admin.vacation.model.dto.Vacation;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin/job")
@RequiredArgsConstructor
public class JobController {

	private final JobService service;
	
	
	@PostMapping("/insertjob.do")
	public String insertJob(String jobName,Model m) {
		int result=service.insertJob(jobName);
		String msg,loc;
		if(result>0) {
			msg="등록성공";
			loc="/admin/job/selectjoball.do";
		}else {
			msg="등록실패";
			loc="/admin/job/selectjoball.do";
		}
		m.addAttribute("msg",msg);
		m.addAttribute("loc",loc);
		return "common/msg";
	}
	
	@GetMapping("/selectjoball.do")
	public String selectJobAll(Model m) {
		m.addAttribute("jobs",service.selectJobAll());
		return "admin/job/joblist";
	}
	
	@PostMapping("/deletejob.do")
	public String deleteJob(String key,Model m) {
		int result=service.deleteJob(key);
		String msg,loc;
		if(result>0) {
			msg="삭제성공";
			loc="/admin/job/selectjoball.do";
		}else {
			msg="삭제실패";
			loc="/admin/job/selectjoball.do";
		}
		m.addAttribute("msg",msg);
		m.addAttribute("loc",loc);
		return "common/msg";
	}
	
	@GetMapping("/updatejob")
	public ResponseEntity<Map<String,Job>> updateJob(String jobKey) {

		Map<String,Job> response =new HashMap<>();
		response.put("job", service.selectJobByKey(jobKey));

		return ResponseEntity.ok(response);

	}
	

	@PostMapping("/updatejobend")
	public String updateJob(Job j,Model m) {
		int result=service.updateJob(j);
		String msg,loc;
		if(result>0) {
			msg="수정성공";
			loc="/admin/job/selectjoball.do";
		}else {
			msg="수정실패";
			loc="/admin/job/selectjoball.do";
		}
		m.addAttribute("msg",msg);
		m.addAttribute("loc",loc);
		
		return "common/msg";
	}
	
	
	
	
	
	
}

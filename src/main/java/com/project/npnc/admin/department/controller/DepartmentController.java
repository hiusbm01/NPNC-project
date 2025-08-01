package com.project.npnc.admin.department.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.npnc.admin.department.model.dto.Department;
import com.project.npnc.admin.department.model.service.DepartmentService;
import com.project.npnc.admin.job.model.dto.Job;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/dept")
@Slf4j
public class DepartmentController {
	
	private final DepartmentService service;
	
	
	@PostMapping("/insertdept.do")
	public String insertDept(String deptName,Model m) {
		int result=service.insertDept(deptName);
		String msg,loc;
		if(result>0) {
			msg="등록성공";
			loc="/admin/dept/selectdeptall.do";
		}else {
			msg="등록실패";
			loc="/admin/dept/selectdeptall.do";
		}
		m.addAttribute("msg",msg);
		m.addAttribute("loc",loc);
		return "common/msg";
	}
	
	@GetMapping("/selectdeptall.do")
	public String selectDeptAll(Model m) {
		List<Department> d=service.selectDeptAll();
		m.addAttribute("depts",d);
		return "admin/dept/deptlist";
	}
	
	@PostMapping("/deletedept.do")
	public String deleteDept(String key,Model m) {
		int result=service.deleteDept(key);
		String msg,loc;
		if(result>0) {
			msg="삭제성공";
			loc="/admin/dept/selectdeptall.do";
		}else {
			msg="삭제실패";
			loc="/admin/dept/selectdeptall.do";
		}
		m.addAttribute("msg",msg);
		m.addAttribute("loc",loc);
		return "common/msg";
	}
	
	@GetMapping("/updatedept")
	public ResponseEntity<Map<String,Department>> updateDept(String deptKey) {
		Map<String,Department> response =new HashMap<>();
		response.put("dept", service.selectDeptByKey(deptKey));
		return ResponseEntity.ok(response);

	}

	
	@PostMapping("/updatedeptend")
	public String updateDept(Department d,Model m) {
		int result=service.updateDept(d);
		String msg,loc;
		if(result>0) {
			msg="수정성공";
			loc="/admin/dept/selectdeptall.do";
		}else {
			msg="수정실패";
			loc="/admin/dept/selectdeptall.do";
		}
		m.addAttribute("msg",msg);
		m.addAttribute("loc",loc);
		
		return "common/msg";
	}
	
}

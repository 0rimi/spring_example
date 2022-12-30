package com.example.lesson05;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/lesson05")
@Controller
public class Lesson05Controller {
	
	// http://localhost/lesson05/ex01
	@GetMapping("/ex01")
	public String ex01() {
		return "lesson05/ex01";
	}
	
	// http://localhost/lesson05/ex02
	@GetMapping("/ex02")
	public String ex02(Model model) {
		
		//List<String>
		List<String> THEBOYZ = new ArrayList<>();
		THEBOYZ.add("영훈");
		THEBOYZ.add("현재");
		THEBOYZ.add("주연");
		THEBOYZ.add("선우");
		THEBOYZ.add("상연");
		
		model.addAttribute("THEBOYZ", THEBOYZ);
		
		//List<Map>
		List<Map<String,Object>> users = new ArrayList<>();
		Map<String,Object> user = new HashMap<>();
		user.put("name", "김영훈");
		user.put("age", "26");
		user.put("hobby", "스키");
		users.add(user);
		
		user = new HashMap<>();
		user.put("name", "이재현");
		user.put("age", "26");
		user.put("hobby", "영화감상");
		users.add(user);
		
		user = new HashMap<>();
		user.put("name", "이주연");
		user.put("age", "25");
		user.put("hobby", "다큐멘터리시청");
		users.add(user);
		
		model.addAttribute("users",users);
		
		return "lesson05/ex02";
	}
	
	@GetMapping("/ex03")
	public String ex03() {
		return "lesson05/ex03";
	}
	
	
	
}

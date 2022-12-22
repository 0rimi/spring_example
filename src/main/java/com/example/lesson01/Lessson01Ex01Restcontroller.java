package com.example.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/lesson01/ex01")
@RestController		//@Controller + @Responsebody
public class Lessson01Ex01Restcontroller {
	
	@RequestMapping("/3")	//http://localhost:9090/lesson01/ex01/3
	public String ex01_3() {
		return "@RestController 사용해서 String을 리턴한다";
	}
	
	@RequestMapping("/4")
	public Map<String, String> ex01_4() {
		Map<String, String> tbz = new HashMap<>();
		tbz.put("빵밀", "김영훈이재현");
		tbz.put("쥬밀", "이주연이재현");
		tbz.put("선밀", "김선우이재현");
		return tbz;
	}
	
	// @Responsbody + String return > HttpMessageConverter : String내용을 resoponsebody에 담아 html로 내린다.
	// @Responsbody + 객체 return > HttpMessageConverter : jackson 라이브러리가 동작, JSON 응답으로 내림(api)
	
	@RequestMapping("/5")
	public Data ex01_5() {
		Data data = new Data();
		data.setId(1);
		data.setName("김영훈");
		
		return data;	//일반 bean 객체로 json으로 변환된다.
	}
	
	@RequestMapping("/6")
	public ResponseEntity<Data> ex01_6() {
		Data data = new Data();
		data.setId(1);
		data.setName("김영훈");
		
		return new ResponseEntity<>(data,HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
}

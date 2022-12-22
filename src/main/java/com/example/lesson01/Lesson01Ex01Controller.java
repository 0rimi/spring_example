package com.example.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/lesson01/ex01")
@Controller	//Spring bean : 컨트롤러 어노테이션한 객체(bean) - 가장 처음 요청을 받는곳
public class Lesson01Ex01Controller {
	
	// String 출력용
	// http://localhost:9090/lesson01/ex01/1
	@ResponseBody		//	return되는 값을 HTML Responsebody에 넣어보낸다.
	@RequestMapping("/1")
	public String printString() {
		String text = "예제 1번 <br> 문자열을 response body로 보내는 예제<br>"
				+ "<h1>THE BOYZ</h1>";
		
		return text;
	}
	
	// Map출력하기
	// http://localhost:9090/lesson01/ex01/2
	@ResponseBody
	@RequestMapping("/2")
	public Map<String,Object> printMap() {
		// {"영훈"=0808, "재현"=0913, ...}
		Map<String,Object> map = new HashMap<>();
		map.put("영훈", 19970808);
		map.put("재현", 19970913);
		map.put("주연", 19980115);
		map.put("선우", 20000412);
		
		// spring web starter 때문에 jackson이라는 라이브러리가 포함되어있음
		return map;	// map을 return하면 JSON으로 나타난다.
	}
	
	
}

package com.example.lesson01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller		//@RestController 아님. jsp뿌리는 용도이므로
public class Lesson01Ex02Controller {
	
	// http://localhost/lesson01/ex02/1
	@RequestMapping("/lesson01/ex02/1")
	public String ex02() {
		//Responsebody 가 아닌상태로 String을 return하면
		//ViewResolver에 의해 리턴된 String이름의 view경로를 찾고 화면이 출력.
		return "lesson01/ex02";
	}

}

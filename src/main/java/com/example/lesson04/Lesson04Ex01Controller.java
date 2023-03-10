package com.example.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.lesson04.bo.UserBO;
import com.example.lesson04.model.User;

@RequestMapping("/lesson04/ex01")
@Controller
public class Lesson04Ex01Controller {
	
	@Autowired
	private UserBO userBO;
	
	// 회원가입화면
	// http://localhost/lesson04/ex01/add_user_view
	@RequestMapping(path="/add_user_view"//, method=
			)
	public String addUserView() {
		return "lesson04/addUser";
	}
	
	@PostMapping("/add_user")
	public String addUser(
			@RequestParam("name") String name,
			@RequestParam("yyyymmdd") String yyyymmdd,
			@RequestParam(value="email", required=false) String email,
			@RequestParam(value="introduce", required=false) String introduce){
		
		// DB insert
		userBO.addUser(name, yyyymmdd, email, introduce);
		
		return "lesson04/afterAddUser";
	}
	
	// http://localhost/lesson04/ex01/get_last_user_view
	@GetMapping("/get_last_user_view")
	public String getLastUserView(Model model) {
		
		// db selectOne : 가장 마지막에 추가된 사람 한명 가져오기
		User user = userBO.getLastUser();
		
		// model
		model.addAttribute("seller",user);
		model.addAttribute("title", "회원정보");
		
		return "lesson04/getLastUser";
	}
	
}

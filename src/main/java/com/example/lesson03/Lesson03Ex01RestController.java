package com.example.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.lesson03.bo.ReviewBO;
import com.example.lesson03.model.Review;

@RestController
public class Lesson03Ex01RestController {
	
	@Autowired
	private ReviewBO reviewBO;
	
	// http://localhost/lesson03/ex01?id=2
	@RequestMapping("/lesson03/ex01")
	public Review ex01(
			@RequestParam("id") int id		//필수파라미터라는 의미
			//@RequestParam(value="id", required = true) int id	//필수파라미터라는 의미
			//@RequestParam(value="id", required = false) Integer id	//비필수파라미터라는 의미(null가능한 타입이므 integer)
			//@RequestParam(value="id", defaultValue = "1") int id //비필수지만, 디폴트값이 있어 int 로 
			) { 
//		if(id == null) {
//			return null;
//		}else {
//			return reviewBO.getReview(id);
//		}
		return reviewBO.getReview(id);
	}

}

package com.example.lesson03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.lesson03.dao.ReviewDAO;
import com.example.lesson03.model.Review;

@Service
public class ReviewBO {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	public Review getReview(int id) {	// NULL가능이면 integer
		return reviewDAO.selectReview(id);
	}
	
	// input : reveiw 객체
	// output : 성공한 insert 갯수
	public int addReview(Review review) {		
		return reviewDAO.insertReview(review); 
	}

	// input : reveiw 필드(4,"콤비네이션R","전지현",5.0,"진짜 맛있네요 믿먹도")
	// output : 성공한 insert 갯수
	public int addReview(
			int storeId, String menu, String userName,double point, String review) {		
		return reviewDAO.insertReviewField(storeId,menu,userName,point,review); 
	}
	
	///////////lesson03_ex03 : UPDATE문
	public int updateReviewById(int id, String review) {
		return reviewDAO.updateReviewById(id,review);
	}

	//////DELETE문
	public void deleteReviewById(int id) {
		reviewDAO.deleteReviewById(id);
	}
	
}

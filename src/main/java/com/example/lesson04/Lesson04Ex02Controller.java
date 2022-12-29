package com.example.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.lesson04.bo.StudentBO;
import com.example.lesson04.model.Student;

@RequestMapping("/lesson04/ex02")
@Controller
public class Lesson04Ex02Controller {
	
	@Autowired
	private StudentBO studentBO;
	
	// 학생 추가 화면
	// http://localhost/lesson04/ex02/add_student_view
	@GetMapping("/add_student_view")
	public String addStudentView() {
		
		return "lesson04/addStudent";
	}
	
	// http://localhost/lesson04/ex02/add_student
	@PostMapping("/add_student")
	public String addStudent(@ModelAttribute Student student
							,Model model) {
		
		// db insert
		studentBO.addStudent(student);
		System.out.println(student);
		
		// db select(방금 가입된 사람)
		int id = student.getId();
		Student newStudent = studentBO.getStudentByID(id);
		
		// view 페이지 응답값
		model.addAttribute("newStudent", newStudent);
		model.addAttribute("subject","학생 정보");
		
		return "lesson04/afterAddStudent";
	}
	
}

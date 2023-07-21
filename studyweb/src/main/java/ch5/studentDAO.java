package ch5;

import java.util.ArrayList;
import java.util.List;

public class studentDAO {
	//아이들 정보 저정용 LIST
	List<student> studentList;
	
	// 객체 생성시 3마리의 애기들을 테스트용으로 생성
	public studentDAO() {
		studentList = new ArrayList<>();
		studentList.add(new student(1, "찰밥이", "돼지"));
		studentList.add(new student(2, "곰탕이", "얍쌥이"));
		studentList.add(new student(3, "후추","후추추"));
		
	}
	
	//전체 아이들 조회
	public List<student>getAll(){
		return studentList;
		
	}
	//태어난 순서로 조회
	public student getstudent(int id) {
		//리스트 인덱스 시작이0이므로 1빼줌 이해안가지만 그렇게하셈 ㅅㅂ //아 이해해버림 ㅅㄱ
		return studentList.get(id-1);
		
	}

}

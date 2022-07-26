package org.academy.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class CoursePageDTO {
	
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private CourseCriteria cri;
	
	public CoursePageDTO(CourseCriteria cri, int total) {
		
		this.cri = cri;
		this.total = total;
		
		//페이지 끝번호
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0)) * 10;
		
		//페이지 시작번호
		this.startPage = this.endPage - 9;
		
		int realEnd = (int)(Math.ceil((total * 1.0) / cri.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		
		this.next = this.endPage <realEnd;
	}
	
}
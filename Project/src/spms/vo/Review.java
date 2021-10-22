package spms.vo;

import java.util.Date;

public class Review {
	protected String title;
	protected int review_no;
	protected String email;
	protected String review;
	protected String name;
	protected String imgPath;
	
	public String getTitle() {
		return title;
	}
	public Review setTitle(String title) {
		this.title = title;
		return this;
	}
	public String getImgPath() {
		return imgPath;
	}
	public Review setImgPath(String imgPath) {
		this.imgPath = imgPath;
		return this;
	}
	protected int hit;
	protected Date review_regdate;
	
	
	public int getReview_no() {
		return review_no;
	}
	public Review setReview_no(int review_no) {
		this.review_no = review_no;
		return this;
	}
	public String getEmail() {
		return email;
	}
	public Review setEmail(String email) {
		this.email = email;
		return this;
	}
	public String getReview() {
		return review;
	}
	public Review setReview(String review) {
		this.review = review;
		return this;
	}
	
	public String getName() {
		return name;
	}
	public Review setName(String name) {
		this.name = name;
		return this;
	}
	public int getHit() {
		return hit;
	}
	public Review setHit(int hit) {
		this.hit = hit;
		return this;
	}
	public Date getReview_regdate() {
		return review_regdate;
	}
	public Review setReview_regdate(Date review_regdate) {
		this.review_regdate = review_regdate;
		return this;
	}
	
	
	
}

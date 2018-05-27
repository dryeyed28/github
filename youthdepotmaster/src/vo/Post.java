package vo;

import java.util.Date;

public class Post {
	private int post_id;
	private Board board;
	private Member member;
/*	private int mem_id;
	private String mem_nickNsame;*/
	private String post_title;
	private String post_content;
	private Date post_dateTime;
	private int post_comment_count;
	private int post_view_count;
	private int post_del;
	public Post() {
		super();
	}
	public Post(int post_id, Board board, Member member, String post_title, String post_content, Date post_dateTime,
			int post_comment_count, int post_view_count, int post_del) {
		super();
		this.post_id = post_id;
		this.board = board;
		this.member = member;
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_dateTime = post_dateTime;
		this.post_comment_count = post_comment_count;
		this.post_view_count = post_view_count;
		this.post_del = post_del;
	}
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public Board getBoard() {
		return board;
	}
	public void setBoard(Board board) {
		this.board = board;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public Date getPost_dateTime() {
		return post_dateTime;
	}
	public void setPost_dateTime(Date post_dateTime) {
		this.post_dateTime = post_dateTime;
	}
	public int getPost_comment_count() {
		return post_comment_count;
	}
	public void setPost_comment_count(int post_comment_count) {
		this.post_comment_count = post_comment_count;
	}
	public int getPost_view_count() {
		return post_view_count;
	}
	public void setPost_view_count(int post_view_count) {
		this.post_view_count = post_view_count;
	}
	public int getPost_del() {
		return post_del;
	}
	public void setPost_del(int post_del) {
		this.post_del = post_del;
	}
	
}

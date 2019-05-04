package com.lanyue.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.KeySql;

@Table(name = "t_join")
public class JoinPojo {
	@Id
    @KeySql(useGeneratedKeys = true)
	private Integer id;
	private String post;
	private String message;
	private String date;
	private String[] splitStr;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String[] getSplitStr() {
		return splitStr;
	}
	public void setSplitStr(String[] splitStr) {
		this.splitStr = splitStr;
	}
	
}

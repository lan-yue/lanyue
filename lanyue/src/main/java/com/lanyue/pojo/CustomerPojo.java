package com.lanyue.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

import tk.mybatis.mapper.annotation.KeySql;

@Table(name = "customer")
public class CustomerPojo {
    @Id
    @KeySql(useGeneratedKeys = true)
    private Integer id;
    private String name;
    private String phone;
    private String email;
    private String massage;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMassage() {
		return massage;
	}
	public void setMassage(String massage) {
		this.massage = massage;
	}
	@Override
	public String toString() {
		return "CustomerPojo [id=" + id + ", name=" + name + ", phone=" + phone + ", email=" + email + ", massage="
				+ massage + "]";
	}
	
}

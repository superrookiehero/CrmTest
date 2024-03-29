package com.yh.bean;

public class User {
   private Integer id;
   private String email;
   private String username;
   private String password;
   private String phoneNum;
   private String status;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getPhoneNum() {
	return phoneNum;
}
public void setPhoneNum(String phoneNum) {
	this.phoneNum = phoneNum;
}
public String getStatus() {
	if(status == "1"){
	    return "开启";    		
	}else{
		return"关闭";
	}
}
public void setStatus(String status) {
	this.status = status;
}
@Override
public String toString() {
	return "User [id=" + id + ", email=" + email + ", username=" + username + ", password=" + password + ", phoneNum="
			+ phoneNum + ", status=" + status + "]";
}

}

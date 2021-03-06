package com.web.model;
// Generated Jan 2, 2017 8:27:41 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Users generated by hbm2java
 */
public class Users  implements java.io.Serializable {


     private Integer idUser;
     private String userName;
     private String email;
     private String pwd;
     private int quyen;
     private String fullName;
     private Date birthDay;
     private Boolean gender;
     private String note;

    public Users() {
    }

	
    public Users(String userName, String email, String pwd, int quyen, String fullName) {
        this.userName = userName;
        this.email = email;
        this.pwd = pwd;
        this.quyen = quyen;
        this.fullName = fullName;
    }
    public Users(String userName, String email, String pwd, int quyen, String fullName, Date birthDay, Boolean gender, String note) {
       this.userName = userName;
       this.email = email;
       this.pwd = pwd;
       this.quyen = quyen;
       this.fullName = fullName;
       this.birthDay = birthDay;
       this.gender = gender;
       this.note = note;
    }
   
    public Integer getIdUser() {
        return this.idUser;
    }
    
    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }
    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPwd() {
        return this.pwd;
    }
    
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
    public int getQuyen() {
        return this.quyen;
    }
    
    public void setQuyen(int quyen) {
        this.quyen = quyen;
    }
    public String getFullName() {
        return this.fullName;
    }
    
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public Date getBirthDay() {
        return this.birthDay;
    }
    
    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }
    public Boolean getGender() {
        return this.gender;
    }
    
    public void setGender(Boolean gender) {
        this.gender = gender;
    }
    public String getNote() {
        return this.note;
    }
    
    public void setNote(String note) {
        this.note = note;
    }




}



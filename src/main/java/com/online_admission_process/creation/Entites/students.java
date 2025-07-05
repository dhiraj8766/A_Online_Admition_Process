package com.online_admission_process.creation.Entites;


import jakarta.persistence.*;

@Entity
@Table(name="student_registration")
public class students {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int sid;

    private String name;
    private String email;
    private String password;
    private String gender;
    private String course;
    private String number;
    private String status;


    public students() {
        super();
    }

    public students(int sid, String name, String email, String password, String gender, String course, String number, String status) {
        this.sid = sid;
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.course = course;
        this.number = number;
        this.status = status;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "students{" +
                "sid=" + sid +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", gender='" + gender + '\'' +
                ", course='" + course + '\'' +
                ", number='" + number + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}

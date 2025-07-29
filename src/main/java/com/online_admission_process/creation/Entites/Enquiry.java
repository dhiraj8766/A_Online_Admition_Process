package com.online_admission_process.creation.Entites;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Enquiry {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int enquiry_id;

    private int sid;
    private String subject;
    private String enquiry_message;
    private String enquiry_date;
    private String enquiry_remark;

    public Enquiry() {
        super();
    }

    public Enquiry(int enquiry_id, int sid, String subject, String enquiry_message, String enquiry_date, String enquiry_remark) {
        this.enquiry_id = enquiry_id;
        this.sid = sid;
        this.subject = subject;
        this.enquiry_message = enquiry_message;
        this.enquiry_date = enquiry_date;
        this.enquiry_remark = enquiry_remark;
    }


    public int getEnquiry_id() {
        return enquiry_id;
    }

    public void setEnquiry_id(int enquiry_id) {
        this.enquiry_id = enquiry_id;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getEnquiry_message() {
        return enquiry_message;
    }

    public void setEnquiry_message(String enquiry_message) {
        this.enquiry_message = enquiry_message;
    }

    public String getEnquiry_date() {
        return enquiry_date;
    }

    public void setEnquiry_date(String enquiry_date) {
        this.enquiry_date = enquiry_date;
    }

    public String getEnquiry_remark() {
        return enquiry_remark;
    }

    public void setEnquiry_remark(String enquiry_remark) {
        this.enquiry_remark = enquiry_remark;
    }


    @Override
    public String toString() {
        return "Enquiry{" +
                "enquiry_id=" + enquiry_id +
                ", sid=" + sid +
                ", subject='" + subject + '\'' +
                ", enquiry_message='" + enquiry_message + '\'' +
                ", enquiry_date='" + enquiry_date + '\'' +
                ", enquiry_remark='" + enquiry_remark + '\'' +
                '}';
    }
}

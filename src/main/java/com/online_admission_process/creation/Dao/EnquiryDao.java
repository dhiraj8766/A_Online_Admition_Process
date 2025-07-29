package com.online_admission_process.creation.Dao;


import com.online_admission_process.creation.Entites.Enquiry;
import com.online_admission_process.creation.Entites.students;
import com.online_admission_process.creation.repository.EnquiryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class    EnquiryDao {

    @Autowired
    EnquiryRepo enquiryRepo;

    public void saveEnquiryDao(Enquiry enquiry) {
        enquiryRepo.save(enquiry);
    }

    public List<Enquiry> getEnquiriesBySid(int sid) {
        return enquiryRepo.findBySid(sid);
    }

    public List<Enquiry> getAllEnquiries() {
        return enquiryRepo.findAll();
    }


    public Enquiry getEnquiryById(int id) {
        Optional<Enquiry> optional = enquiryRepo.findById(id);
        return optional.orElse(null);
    }

    public Enquiry saveOrUpdateEnquiry(Enquiry enquiry) {
        return enquiryRepo.save(enquiry);
    }



}

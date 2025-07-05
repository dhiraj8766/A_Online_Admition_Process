package com.online_admission_process.creation.Dao;


import com.online_admission_process.creation.Entites.Enquiry;
import com.online_admission_process.creation.repository.EnquiryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EnquiryDao {

    @Autowired
    EnquiryRepo enquiryRepo;

    public void saveEnquiryDao(Enquiry enquiry) {
        enquiryRepo.save(enquiry);
    }

}

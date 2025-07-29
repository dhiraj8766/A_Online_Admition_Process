package com.online_admission_process.creation.repository;


import com.online_admission_process.creation.Entites.Enquiry;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface EnquiryRepo extends JpaRepository<Enquiry, Integer> {
    List<Enquiry> findBySid(int sid);


}


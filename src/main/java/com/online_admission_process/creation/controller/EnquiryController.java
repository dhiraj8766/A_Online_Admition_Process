package com.online_admission_process.creation.controller;

import com.online_admission_process.creation.Dao.EnquiryDao;
import com.online_admission_process.creation.Dao.StudentDao;
import com.online_admission_process.creation.Entites.Enquiry;
import com.online_admission_process.creation.Entites.students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EnquiryController {

    @Autowired
    StudentDao studentDao;

    @Autowired
    EnquiryDao enquiryDao;

    @RequestMapping("/Enquiry")
    public String Enquiry(@RequestParam("sid") int sid, Model model) {


        students std= studentDao.getStudentDao(sid);
        model.addAttribute("student", std);
        return "student/Enquiry";
    }

    @PostMapping("/saveEnquiry")
    public String saveEnquiry(@RequestParam("sid") int sid, Enquiry enquiry, Model model) {

        students std= studentDao.getStudentDao(sid);
        model.addAttribute("student", std);

        enquiryDao.saveEnquiryDao(enquiry);
        model.addAttribute("msg", "Enquiry saved");

        return "student/Enquiry";
    }


    @RequestMapping("/AllEnquiry")
    public String AllEnquiry(Model model) {
        return "college/AllEnquiry";
    }


}

package com.online_admission_process.creation.controller;

import com.online_admission_process.creation.Dao.EnquiryDao;
import com.online_admission_process.creation.Dao.StudentDao;
import com.online_admission_process.creation.Entites.Enquiry;
import com.online_admission_process.creation.Entites.students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.List;

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

        students std = studentDao.getStudentDao(sid);
        model.addAttribute("student", std);

        // Set date and remark manually
        LocalDate currentDate = LocalDate.now();
        enquiry.setEnquiry_date(currentDate.toString()); // Format: yyyy-MM-dd

        enquiry.setEnquiry_remark("Pending"); // default status

        enquiryDao.saveEnquiryDao(enquiry);

        model.addAttribute("msg", "Enquiry saved");

        return "student/Enquiry";
    }

    @GetMapping("/myEnquiry")
    public String viewEnquiries(@RequestParam("sid") int sid, Model model) {

        List<Enquiry> list = enquiryDao.getEnquiriesBySid(sid);
        model.addAttribute("myenquiries", list);

        students std= studentDao.getStudentDao(sid);
        model.addAttribute("student", std);
        return "student/myEnquiry";
    }

    @RequestMapping("/AllEnquiry")
    public String AllEnquiry(Model model) {
        List<Enquiry> enquiries = enquiryDao.getAllEnquiries();
        model.addAttribute("allenquiries", enquiries);

        return "college/AllEnquiry";
    }


    @PostMapping("/addRemark")
    public String addRemark(@RequestParam("enquiry_id") int id,
                            @RequestParam("remark") String remark,
                            Model model) {

        Enquiry enq = enquiryDao.getEnquiryById(id); // Fetch the enquiry by ID (you need this DAO method)

        if (enq != null) {
            enq.setEnquiry_remark(remark); // Set new remark
            enquiryDao.saveOrUpdateEnquiry(enq); // Save updated enquiry
            model.addAttribute("msg", "Remark added successfully.");
        } else {
            model.addAttribute("msg", "Enquiry not found.");
        }

        List<Enquiry> all = enquiryDao.getAllEnquiries(); // Reload list if needed
        model.addAttribute("allenquiries", all);

        return "college/AllEnquiry"; // Go back to list or your target JSP
    }



}

package com.online_admission_process.creation.controller;

import com.online_admission_process.creation.Dao.StudentDao;
import com.online_admission_process.creation.Entites.students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@org.springframework.stereotype.Controller
public class Controller {

    @Autowired
    public StudentDao studentDao;

    @RequestMapping("/home")
    public String home(){
        return "index";
    }


    @RequestMapping("/registration")
    public String registration(){
        return "registration";
    }

    @RequestMapping("/student_login")
    public String student_login(){
        return "student_login";
    }

    @RequestMapping("/college_login")
    public String college_login(){
        return "college_login";
    }

    @RequestMapping("/saveData")
    public String saveData(students std, Model model){
        studentDao.saveDataDao(std);

        model.addAttribute("msg", "Registration Successful");

        return "registration";
    }

    @GetMapping("/student_login_action")
    public String student_login_action(String email, String password, Model model){



        if(email.equals("admin123") && password.equals("admin123")){
            return "college/college_dashboard";
        }

        students std = studentDao.student_login_actionDao(email, password);

        if(std != null){
            if(std.getStatus().equals("Approved")) {
                model.addAttribute("student", std);
                return "student/StudentHome";
            }else{
                model.addAttribute("msg", "your request not approved");
                return "student_login";
            }

        }else {
            model.addAttribute("msg", "Invalid Email or Password");
            return "student_login";
        }
    }

    @ResponseBody
    @RequestMapping("/viewAllStudents")
    public List<students> getAllStudents(Model model){
        List<students> studentsList =  studentDao.findAllStudents();
        model.addAttribute("studentsList", studentsList);
        return studentsList;
    }

    @RequestMapping("/viewAllStudentsPage")
    public String getAllStudentsPage(Model model){
        List<students> studentsList =  studentDao.findAllStudents();
        model.addAttribute("studentsList", studentsList);
        return "college/student_list";
    }

    @ResponseBody
    @RequestMapping("/getById")
    public Optional<students> getById(@RequestParam int id, Model model){
        Optional<students> student = studentDao.findStudentById(id);
        model.addAttribute("student",student);
        return student;
    }

    @RequestMapping("/college_home")
    public String college_home(){
        return "college/college_dashboard";
    }

    @RequestMapping("/student_home")
    public String student_home(@RequestParam("sid") int sid, Model model){

        students std= studentDao.getStudentDao(sid);
        model.addAttribute("student", std);
        return "student/StudentHome";
    }


    @RequestMapping("/student_edit")
    public String student_edit(@RequestParam("sid") int sid, Model model){

        students std= studentDao.getStudentDao(sid);
        model.addAttribute("student", std);
        return "college/student_edit";
    }

    @PostMapping("/studentEdit")
    public String studentEdit(@RequestParam("sid") int sid, students std, Model model){

        students st = studentDao.studentEditDao(sid, std);
        model.addAttribute("student", st);
        model.addAttribute("msg", "Student Edit Successful");

            return "college/student_edit";
    }

    @RequestMapping("/MyProfile")
    public String student_editstd(@RequestParam("sid") int sid, Model model){

        students std= studentDao.getStudentDao(sid);
        model.addAttribute("student", std);
        return "student/student_edit";
    }
    @PostMapping("/MyProfileEdit")
    public String studentEditstd(@RequestParam("sid") int sid, students std, Model model){

        students st = studentDao.studentEditDao(sid, std);
        model.addAttribute("student", st);
        model.addAttribute("msg", "Student Edit Successful");

        return "student/student_edit";
    }


}

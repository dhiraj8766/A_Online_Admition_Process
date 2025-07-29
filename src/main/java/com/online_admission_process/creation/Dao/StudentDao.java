package com.online_admission_process.creation.Dao;


import com.online_admission_process.creation.Entites.students;
import com.online_admission_process.creation.repository.StudentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class StudentDao {

    @Autowired
    StudentRepo studentRepo;
    @Autowired
    private ResourcePatternResolver resourcePatternResolver;

    public void saveDataDao(students std){
        studentRepo.save(std);
    }

    public students student_login_actionDao(String email, String password){
        return studentRepo.findByEmailAndPassword(email, password);
    }


    public List<students> findAllStudents(){
        List<students> studentsList = (List<students>) studentRepo.findAll();
        return studentsList;
    }




    public Optional<students> findStudentById(int id){
        Optional<students> student = studentRepo.findById(id);
        return student;
    }

    public students getStudentDao(int id){
        students student = studentRepo.findById(id).get();
        return student;
    }





    public students studentEditDao(int sid, students std){
        Optional<students> result = studentRepo.findById(sid);

        if(result.isPresent()){
            return studentRepo.save(std);
        }
        return null;
    }


}

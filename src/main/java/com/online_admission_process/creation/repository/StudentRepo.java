package com.online_admission_process.creation.repository;

import com.online_admission_process.creation.Entites.students;
import org.springframework.data.repository.CrudRepository;

public interface StudentRepo extends CrudRepository<students, Integer> {
    public students findByEmailAndPassword(String email, String password);
}

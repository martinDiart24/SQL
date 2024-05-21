package com.example.sqldemo.repository;

import java.util.List;

import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

import com.example.sqldemo.domain.Person;

@Repository
public interface  PersonRepo extends ListCrudRepository<Person, Long> {
    
    List<Person> findBooksByPrijmeni(String author);
}
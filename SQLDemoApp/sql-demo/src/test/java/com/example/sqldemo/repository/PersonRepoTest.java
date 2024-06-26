package com.example.sqldemo.repository;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.sqldemo.domain.Person;

@SpringBootTest
public class PersonRepoTest {
    
    @Autowired
    private PersonRepo personRepo;
    
    @Test
    public void givenDbContainsBooks_whenFindBooksByAuthor_thenReturnBooksByAuthor() {
        // Book book1 = new Book("Spring Data", "John Doe", "1234567890");
        // Book book2 = new Book("Spring Data 2", "John Doe", "1234567891");
        // Book book3 = new Book("Spring Data 3", "John Doe", "1234567892");
        // bookListRepository.saveAll(Arrays.asList(book1, book2, book3));

        List<Person> persons = personRepo.findBooksByPrijmeni("Holub");
        for (Person person : persons) {
            System.out.println(person);
        }
       
    }
}
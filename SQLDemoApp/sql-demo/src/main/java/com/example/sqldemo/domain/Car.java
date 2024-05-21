package com.example.sqldemo.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "majiteleauta")
public class Car {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String jmeno;

    private String prijmeni;
    
    @Override
public String toString() {
    return "Person [id=" + id + ", jmeno=" + jmeno + ", prijmeni=" + prijmeni + "]";
}
}
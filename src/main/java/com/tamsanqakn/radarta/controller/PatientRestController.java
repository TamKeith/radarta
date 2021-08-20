package com.tamsanqakn.radarta.controller;

import com.tamsanqakn.radarta.model.Patient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class PatientRestController {
    /**
     * getting patient information from Database
     * */
    public Patient getPatient(
            @RequestParam(value = "firstName", defaultValue = "Keith") String firstname,
            @RequestParam(value = "lastName", defaultValue = "Ncube") String lastname,
            @RequestParam(value = "age", defaultValue = "43") int age){
        Patient patient = new Patient();
        patient.setFirstName(firstname);
        patient.setLastName(lastname);
        patient.setDob(age);
        return patient;
    }

    /**
     * Creating a new patient (Add Validation using the BindingResult and Valid attributes)
     * */
    @PostMapping("/user")
    public Patient postPatient(Patient patient) {
        System.out.println("User firstname: " + patient.getFirstName());

        return patient;
    }
}



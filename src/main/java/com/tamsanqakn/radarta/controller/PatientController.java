package com.tamsanqakn.radarta.controller;

import com.tamsanqakn.radarta.model.Patient;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class PatientController {
    @GetMapping("/patient")
    public String getPatient(@ModelAttribute("patient") Patient patient){
        return "patient";
    }

    @PostMapping("/patient")
    public String postMapping(@Valid @ModelAttribute("patient") Patient patient, BindingResult result){
        if(result.hasErrors()){
            System.out.println("There were sone errors.");
            /**Return the login page with the inputted values in the error inputs*/
            return "patient";
        }
        System.out.println("Username: " + patient.getFirstName() + " with Password: " + patient.getLastName());
        /**Post and redirect back to the login page*/
        return "patient";
    }

}

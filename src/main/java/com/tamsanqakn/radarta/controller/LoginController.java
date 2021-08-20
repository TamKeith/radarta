package com.tamsanqakn.radarta.controller;

import com.tamsanqakn.radarta.model.Login;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class LoginController {
    @GetMapping("login")
    public String getLogin(@ModelAttribute("login") Login login) { return "login"; }

    @PostMapping("login")
    public String logIntoApplication(@Valid @ModelAttribute("login") Login login, BindingResult result){
        if(result.hasErrors()){
            System.out.println("There were sone errors.");
            /**Return the login page with the inputted values in the error inputs*/
            return "login";
        }
        System.out.println("Username: " + login.getName() + " with Password: " + login.getPassword());
        /**Post and redirect back to the login page*/
        return "redirect:patient";
    }
}
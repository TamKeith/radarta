package com.tamsanqakn.radarta.model;

import javax.validation.constraints.NotEmpty;

public class Login {

    @NotEmpty
    private String name;
    @NotEmpty
    private String password;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

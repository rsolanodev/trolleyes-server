/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ausiasmarch.exceptions;

import java.util.ArrayList;

/**
 *
 * @author Ruben
 */
public class CustomException extends RuntimeException {
    private Integer code = 5000;
    private ArrayList<String> description;

    public CustomException() {
        super();
    }

    public CustomException(Integer code, String description) {
        super(description);
        this.code = code;
        this.description.add(description);
    }

    public CustomException(Integer code, String description, Throwable cause) {
        super(description, cause);
        this.code = code;
        this.description.add(description);
    }

    public CustomException(Throwable cause) {
        super(cause);
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getDescription() {
        return description.toString();
    }

    public void addDescription(String description) {
        this.description.add(description);
    }
}

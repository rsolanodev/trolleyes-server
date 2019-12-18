/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ausiasmarch.exceptions;

/**
 *
 * @author Ruben
 */
public class CustomException extends Exception {

    private Integer code;
    private String description;

    public CustomException() {
        super();
    }

    public CustomException(Integer code, String description) {
        super(description);
        this.code = code;
        this.description = description;
    }

    public CustomException(Integer code, String description, Throwable cause) {
        super(description, cause);
        this.code = code;
        this.description = description;
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
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

package com.techelevator.controller.user.authentication;


import com.techelevator.authentication.UnauthorizedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class UnauthorizedController {
    @ExceptionHandler(UnauthorizedException.class)
    public String displayUnauthorizedPage(){
        return "user/authentication/unauthorized";
    }

}

package com.study.robotmna.controller;

import com.study.robotmna.config.auth.PrincipalDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {


    @GetMapping("/")
    public String homepage(@AuthenticationPrincipal PrincipalDetail principal){
        if(principal != null){
            System.out.println("login user: "+ principal.getUsername());
        }

        return "index";
    }

    @GetMapping("/board/saveForm")
    public String saveForm(){
        return "board/saveForm";
    }

}

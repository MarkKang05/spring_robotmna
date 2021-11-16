package com.study.robotmna.controller.api;

import com.study.robotmna.dto.ResponseDto;
import com.study.robotmna.model.RoleType;
import com.study.robotmna.model.User;
import com.study.robotmna.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RestController
public class UserApiController {

    @Autowired
    private UserService userService;


    @PostMapping("/auth/joinProc")
    public ResponseDto<Integer> save(@RequestBody User user){
        System.out.println("UserApiController : save");
        userService.회원가입(user);
        return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);

    }


//    @PostMapping("/api/user/login")
//    public ResponseDto<Integer> login(@RequestBody User user, HttpSession session){
//        System.out.println("UserApiController : login");
//        User principal = userService.로그인(user);
//        if(principal != null){
//            session.setAttribute("principal", principal);
//        }
//        return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
//    }


}

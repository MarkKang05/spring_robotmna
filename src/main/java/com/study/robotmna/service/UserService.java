package com.study.robotmna.service;

import com.study.robotmna.model.User;
import com.study.robotmna.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    @Transactional
    public void 회원가입(User user){
        userRepository.save(user);
    }

//    @Transactional(readOnly = true)// 정합성 유지
//    public User 로그인(User user) {
//        return userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
//    }
}

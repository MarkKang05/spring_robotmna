package com.study.robotmna.test;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class EncTest {

    @Test
    public void 해쉬(){
        String encPassword = new BCryptPasswordEncoder().encode("1234");
        System.out.println("해쉬" + encPassword);
    }

}

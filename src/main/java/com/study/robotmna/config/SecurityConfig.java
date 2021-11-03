package com.study.robotmna.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

//아래 세개는 세트로 움직여
@Configuration //Bean등록 푸하푸하푸하
@EnableWebSecurity // 필터 추가 = 스프링 스큐리티가 활성화가 되어 있느데 어떤 설정을 해당파일에서 하겠다.    //시큐리티 필터가 등록이 된다
@EnableGlobalMethodSecurity(prePostEnabled = true) // 특정 주소로 접근을 하면 권한 및 인증을 미리 체크하겠다는 뜻.
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    public BCryptPasswordEncoder encodePWD(){
        String encPassword = new BCryptPasswordEncoder().encode("1234");
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/auth/**", "/css/**", "/js/**", "image/**")
                .permitAll()
                .anyRequest()
                .authenticated()
                .and()
                .formLogin()
                .loginPage("/auth/loginForm");
    }


}

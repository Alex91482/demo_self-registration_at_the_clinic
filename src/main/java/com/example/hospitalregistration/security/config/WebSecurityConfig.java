package com.example.hospitalregistration.security.config;

import com.example.hospitalregistration.security.UserDetailsServiceImpl;

import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@EnableWebSecurity
public class WebSecurityConfig {

    private final UserDetailsServiceImpl userDetailsService;

    public WebSecurityConfig(UserDetailsServiceImpl userDetailsService){
        this.userDetailsService = userDetailsService;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailsService);
        authenticationProvider.setPasswordEncoder(passwordEncoder());
        return authenticationProvider;
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception { //дефолтовый юзер для регистрации  Your login: 90898083 Your password: gJHMERmb

        http.csrf().disable()
                .authorizeRequests()
                .antMatchers("/patients/**").hasAuthority("ADMIN")
                .antMatchers("/patientHome").hasAuthority("PATIENT")
                .antMatchers(
                        "/home/**",
                        "/doctors","/doctorNameTimetable/**","/doctorTimetable/**","/doctorMonthTimetable/**",
                        "/registration/**","/pageMailMessage",
                        "/login", "/logout", "/403","/logoutSuccessful"
                        ,"/getRecord/**","/allRecord"
                ).permitAll()
                .anyRequest().authenticated()
                .and()
                //Настройка для входа в систему
                .formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/patientHome")
                .permitAll()
                .and()
                .logout()
                .logoutSuccessUrl("/")
                .and()
                .exceptionHandling()
                .accessDeniedPage("/403")
                .and()
                .authenticationProvider(authenticationProvider())
        ;

        return http.build();
    }
}


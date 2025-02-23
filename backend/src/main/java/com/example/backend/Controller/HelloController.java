package com.example.backend.Controller;


import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@CrossOrigin("*")
@RestController
public class HelloController {
    @GetMapping("/api/hello")
    public String hello() {
        return "Hello from Spring Boot!";
    }
}

package com.test.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @RequestMapping("/hello")
    public String hello(){

        System.out.println("Hello World");
		
		System.out.println("Hello jenkins");
		
        return "Hello World; hello jenkins";
    }


}

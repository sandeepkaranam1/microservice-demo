package com.farm.microservicedemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/service1")
public class TestService {

  @GetMapping
  public String hello(){
    return "Hello How are you?";
  }

}

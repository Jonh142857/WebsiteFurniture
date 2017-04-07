package com.huy.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MainController {
	

    @GetMapping("/master")
    public String master() {
        return "master";
    }
    @GetMapping("/index")
    public String index() {
        return "index";
    }
    @GetMapping("/taikhoan")
    public String taikhoan() {
        return "taikhoan";
    }
    @GetMapping("/lienhe")
    public String lienhe() {
        return "lienhe";
    }
    @GetMapping("/giohang")
    public String giohang() {
        return "giohang";
    }
    @GetMapping("/test")
    public String test() {
        return "test";
    }
    
}

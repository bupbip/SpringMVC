package com.example.controllers;

import com.example.domain.Role;
import com.example.domain.User;
import com.example.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigInteger;
import java.util.Map;

@Controller
public class AccountController {
    @Autowired
    private UserRepo userRepo;

    @GetMapping("account/{user}")
    public String userEditForm(@PathVariable User user,
                               Model model) {  // берем пользователя из БД
        model.addAttribute("user", user);
        model.addAttribute("balance",user.getBalance());
        return "userAccount";
    }

    @PostMapping("account/{user}")
    public String addBalance(@RequestParam(required = false) BigInteger amount,
                             @RequestParam("userId") User user,
                             @RequestParam Map<String,String> form,
                             Model model) {
        if(amount != null){
            user.setBalance(user.getBalance().add(amount));
        }
        model.addAttribute("user", user);
        userRepo.save(user);
        return "redirect:/account/" + user.getId();
    }
}

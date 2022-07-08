package com.example.controllers;

import com.example.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class CoinController {

    @GetMapping("/coin")
    public String startCoin(Model model) {  // берем пользователя из БД
        return "coin";
    }

    @PostMapping("/coin")
    public String updateCoin(
            Model model,
            @RequestParam String result)
    {
        if(result.equals("red")) {

        } else if (result.equals("black")){

        }
        return "coin";
    }
}

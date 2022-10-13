package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/home")
    public String GetCalculate(@RequestParam(name = "value_one", required = false, defaultValue = "0") double value_one,
                            @RequestParam(name = "value_two", required = false, defaultValue = "0") double value_two,
                            @RequestParam(name = "operationformath", required = false, defaultValue = "+") String operationmath, Model model) {
        System.out.println(operationmath);
        double res = switch (operationmath) {
            case "+"-> value_one + value_two;
            case "-"-> value_one - value_two;
            case "*"-> value_one * value_two;
            case "/"-> value_one / value_two;
            default -> 0;
        };
        model.addAttribute("res", res);

        return "res";
    }
    @PostMapping("/home")
    public String PostCalculate(@RequestParam(name = "value_one", required = false, defaultValue = "0") double value_one,
                                @RequestParam(name = "value_two", required = false, defaultValue = "0") double value_two,
                                @RequestParam(name = "operationformath", required = false, defaultValue = "+") String operationmath, Model model) {
        System.out.println(operationmath);
        double res = switch (operationmath) {
            case "+"-> value_one + value_two;
            case "-"-> value_one - value_two;
            case "*"-> value_one * value_two;
            case "/"-> value_one / value_two;
            default -> 0;
        };
        model.addAttribute("res", res);

        return "res";
    }
}

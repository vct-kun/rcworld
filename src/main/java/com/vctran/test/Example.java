package com.vctran.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by vctran on 15/12/15.
 */
@Controller
public class Example {

    private static List<Hello> helloList = new ArrayList<Hello>();

    static {
        Hello hello = new Hello();
        hello.setGreetings("greeting");
        hello.setName("name");
        hello.setId(1L);
        helloList.add(hello);
    }

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String hello() {
        return "hello";
    }

    @RequestMapping(value = "/hello/{name}")
    public String helloCustom(@PathVariable("name") String name, @ModelAttribute("model") ModelMap modelMap) {
        Hello hello = new Hello();
        hello.setGreetings("greeting");
        hello.setName(name);
        hello.setId(1L);

        helloList.add(hello);

        modelMap.addAttribute("helloList", helloList);
        return "hello";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute Hello hello) {
        hello.setGreetings("Salut ");
        helloList.add(hello);
        return "redirect:user";
    }

    @RequestMapping(value = "/")
    public String index() {
        return "redirect:hello";
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String user(@ModelAttribute("model") ModelMap model) {
        model.addAttribute("helloList", helloList);
        return "user";
    }
}

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
public class UserController {

    private static List<User> userList = new ArrayList<User>();

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String hello() {
        return "hello";
    }

    @RequestMapping(value = "/hello/{name}")
    public String helloCustom(@PathVariable("name") String name, @ModelAttribute("model") ModelMap modelMap) {
        User user = new User();
        user.setName(name);
        user.setId(1L);

        userList.add(user);

        modelMap.addAttribute("userList", userList);
        return "hello";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute User user) {
        user.generateUserInfo();
        userList.add(user);
        return "redirect:user";
    }

    @RequestMapping(value = "/")
    public String index() {
        return "redirect:hello";
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String user(@ModelAttribute("model") ModelMap model) {
        model.addAttribute("userList", userList);
        return "user";
    }
}

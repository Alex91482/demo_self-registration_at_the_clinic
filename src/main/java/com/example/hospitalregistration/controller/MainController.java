package com.example.hospitalregistration.controller;

import com.example.hospitalregistration.dao.DiseaseHistoryDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;
import java.util.List;
import java.util.Map;

@Controller
public class MainController {

    private final DiseaseHistoryDAO diseaseHistoryDAO;

    public MainController(DiseaseHistoryDAO diseaseHistoryDAO){
        this.diseaseHistoryDAO = diseaseHistoryDAO;
    }

    @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
    public String welcomePage(Model model) {
        model.addAttribute("title", "Welcome");
        return "pageHome";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return "pageLogin";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginPatientHome(){
        return "pagePatientPersonalArea";
    }


    @RequestMapping(value = "/patientHome", method = RequestMethod.GET)
    public String getPatientPersonalArea(Principal principal, Model model) {
        String login = principal.getName(); //получаем имя текущего пользователя
        List<Map<String, Object>> list = diseaseHistoryDAO.getDiseaseHistoryFromPatientLogin(login);
        model.addAttribute("diseaseHistory",list);
        return "pagePatientPersonalArea"; //возвращаем личный кабинет с заполниным диагнозом и реккомендациями
    }


    @RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
    public String logoutSuccessfulPage() {
        return "pageHome";
    }

    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String accessDenied() {
        return "403";
    }
}

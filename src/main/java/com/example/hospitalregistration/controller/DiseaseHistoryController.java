package com.example.hospitalregistration.controller;


import com.example.hospitalregistration.dao.DiseaseHistoryDAO;
import com.example.hospitalregistration.entity.DiseaseHistory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DiseaseHistoryController {

    private final DiseaseHistoryDAO diseaseHistoryDAO;

    public DiseaseHistoryController(DiseaseHistoryDAO diseaseHistoryDAO){
        this.diseaseHistoryDAO = diseaseHistoryDAO;
    }

    @RequestMapping(value = "/getDiseaseHistory",method = RequestMethod.POST)
    public DiseaseHistory getDiseaseHistoryFromPatientId(long id){
        return diseaseHistoryDAO.findDiseaseHistoryFromPatientId(id);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.demo.controllers;

import java.util.List;

import com.example.demo.services.StatusData;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    private StatusData statusData = new StatusData();
    private List list = statusData.loadData();

   
    @RequestMapping("/")
    public String showHomePage(Model model) {
      
  
        model.addAttribute("covidStatus", list);
        model.addAttribute("newConfirmed", statusData.getNewConfirmed());
        model.addAttribute("newRecovered", statusData.getNewRecoverd());
        model.addAttribute("newDeaths", statusData.getNewDeaths());
        model.addAttribute("totalConfirmed", statusData.getTotalConfirmed());
        model.addAttribute("totalRecovered", statusData.getTotalRecoverd());
        model.addAttribute("totalDeaths", statusData.getTotalDeaths());
     
        return "index";
               
	}
    @RequestMapping("/map")
    public String showMap(Model model){
        
        model.addAttribute("locations", list);
            
        return "map";
    
    }
    
}

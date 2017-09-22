package com.nxy.controller;

import com.nxy.model.TrainTable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/buyTickets", method = RequestMethod.GET)
public class BuyTicketsController {

    @RequestMapping("/viewBuyTickets.do")
    public String viewBuyTickets() {
        return "BuyTickets";
    }

    @RequestMapping(value = "/buyTickets.do")
    public String BuyTickets(@RequestParam("strainID") String strainID, @RequestParam("startStation") String startStation,
                           @RequestParam("endStation") String endStation, @RequestParam("departureTime") String departureTime,
                           @RequestParam("arrivalTime") String arrivalTime, @RequestParam("timeSpent") String timeSpent,
                           @RequestParam("countLeft") String countLeft, @RequestParam("price") String price,
                           Model model) {
        model.addAttribute("strainID", strainID);
        model.addAttribute("startStation", startStation);
        model.addAttribute("endStation", endStation);
        model.addAttribute("departureTime", departureTime);
        model.addAttribute("arrivalTime", arrivalTime);
        model.addAttribute("timeSpent", timeSpent);
        model.addAttribute("countLeft", countLeft);
        model.addAttribute("price", price);
        return "BuyTickets";
    }
}

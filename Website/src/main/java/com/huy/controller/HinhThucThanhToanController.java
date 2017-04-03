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

import com.huy.domain.HinhThucThanhToan;
import com.huy.service.HinhThucThanhToanService;

@Controller
public class HinhThucThanhToanController {
	
	@Autowired
	private HinhThucThanhToanService hinhthucthanhtoanService;

    @GetMapping("/hinhthucthanhtoan")
    public String index(Model model) {
        model.addAttribute("hinhthucthanhtoans", hinhthucthanhtoanService.findAll());
        return "hinhthucthanhtoan_list";
    }
    
    @GetMapping("/hinhthucthanhtoan/create")
    public String create(Model model) {
        model.addAttribute("hinhthucthanhtoan", new HinhThucThanhToan());
        return "hinhthucthanhtoan_form";
    }
    
    @GetMapping("/hinhthucthanhtoan/{id}/edit")
    public String edit(@PathVariable int id, Model model) {
        model.addAttribute("hinhthucthanhtoan", hinhthucthanhtoanService.findOne(id));
        return "hinhthucthanhtoan_form";
    }
    
    @PostMapping("/hinhthucthanhtoan/save")
    public String save(@Valid HinhThucThanhToan hinhthucthanhtoan, BindingResult result, RedirectAttributes redirect) {
        if (result.hasErrors()) {
            return "hinhthucthanhtoan_form";
        }
        hinhthucthanhtoanService.save(hinhthucthanhtoan);
        redirect.addFlashAttribute("success", "Saved hinhthucthanhtoan successfully!");
        return "redirect:/hinhthucthanhtoan";
    }
    
    @GetMapping("/hinhthucthanhtoan/{id}/delete")
    public String delete(@PathVariable int id, RedirectAttributes redirect) {
    	hinhthucthanhtoanService.delete(id);
        redirect.addFlashAttribute("success", "Deleted hinhthucthanhtoan successfully!");
        return "redirect:/hinhthucthanhtoan";
     }
    
    @GetMapping("/hinhthucthanhtoan/search")
    public String search(@RequestParam("q") String q, Model model) {
        if (q.equals("")) {
            return "redirect:/hinhthucthanhtoan";
        }
        
        model.addAttribute("hinhthucthanhtoans", hinhthucthanhtoanService.search(q));
        return "hinhthucthanhtoan_list";
    }

}

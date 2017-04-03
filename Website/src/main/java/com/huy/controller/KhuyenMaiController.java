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

import com.huy.domain.KhuyenMai;
import com.huy.service.KhuyenMaiService;

@Controller
public class KhuyenMaiController {
	
	@Autowired
	private KhuyenMaiService khuyenmaiService;

    @GetMapping("/khuyenmai")
    public String index(Model model) {
        model.addAttribute("khuyenmais", khuyenmaiService.findAll());
        return "khuyenmai_list";
    }
    
    @GetMapping("/khuyenmai/create")
    public String create(Model model) {
        model.addAttribute("khuyenmai", new KhuyenMai());
        return "khuyenmai_form";
    }
    
    @GetMapping("/khuyenmai/{id}/edit")
    public String edit(@PathVariable int id, Model model) {
        model.addAttribute("khuyenmai", khuyenmaiService.findOne(id));
        return "khuyenmai_form";
    }
    
    @PostMapping("/khuyenmai/save")
    public String save(@Valid KhuyenMai khuyenmai, BindingResult result, RedirectAttributes redirect) {
        if (result.hasErrors()) {
            return "khuyenmai_form";
        }
        khuyenmaiService.save(khuyenmai);
        redirect.addFlashAttribute("success", "Saved khuyenmai successfully!");
        return "redirect:/khuyenmai";
    }
    
    @GetMapping("/khuyenmai/{id}/delete")
    public String delete(@PathVariable int id, RedirectAttributes redirect) {
    	khuyenmaiService.delete(id);
        redirect.addFlashAttribute("success", "Deleted khuyenmai successfully!");
        return "redirect:/khuyenmai";
     }
    
    @GetMapping("/khuyenmai/search")
    public String search(@RequestParam("q") String q, Model model) {
        if (q.equals("")) {
            return "redirect:/khuyenmai";
        }
        
        model.addAttribute("khuyenmais", khuyenmaiService.search(q));
        return "khuyenmai_list";
    }

}

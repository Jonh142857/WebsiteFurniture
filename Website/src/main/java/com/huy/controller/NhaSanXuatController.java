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

import com.huy.domain.NhaSanXuat;
import com.huy.service.NhaSanXuatService;

@Controller
public class NhaSanXuatController {
	
	@Autowired
	private NhaSanXuatService nhasanxuatService;

    @GetMapping("/nhasanxuat")
    public String index(Model model) {
        model.addAttribute("nhasanxuats", nhasanxuatService.findAll());
        return "nhasanxuat_list";
    }
    
    @GetMapping("/nhasanxuat/create")
    public String create(Model model) {
        model.addAttribute("nhasanxuat", new NhaSanXuat());
        return "nhasanxuat_form";
    }
    
    @GetMapping("/nhasanxuat/{id}/edit")
    public String edit(@PathVariable int id, Model model) {
        model.addAttribute("nhasanxuat", nhasanxuatService.findOne(id));
        return "nhasanxuat_form";
    }
    
    @PostMapping("/nhasanxuat/save")
    public String save(@Valid NhaSanXuat nhasanxuat, BindingResult result, RedirectAttributes redirect) {
        if (result.hasErrors()) {
            return "nhasanxuat_form";
        }
        nhasanxuatService.save(nhasanxuat);
        redirect.addFlashAttribute("success", "Saved nhasanxuat successfully!");
        return "redirect:/nhasanxuat";
    }
    
    @GetMapping("/nhasanxuat/{id}/delete")
    public String delete(@PathVariable int id, RedirectAttributes redirect) {
    	nhasanxuatService.delete(id);
        redirect.addFlashAttribute("success", "Deleted nhasanxuat successfully!");
        return "redirect:/nhasanxuat";
     }
    
    @GetMapping("/nhasanxuat/search")
    public String search(@RequestParam("q") String q, Model model) {
        if (q.equals("")) {
            return "redirect:/nhasanxuat";
        }
        
        model.addAttribute("nhasanxuats", nhasanxuatService.search(q));
        return "nhasanxuat_list";
    }

}

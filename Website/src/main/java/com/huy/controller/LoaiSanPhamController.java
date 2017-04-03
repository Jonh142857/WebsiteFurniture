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

import com.huy.domain.LoaiSanPham;
import com.huy.service.LoaiSanPhamService;

@Controller
public class LoaiSanPhamController {
	
	@Autowired
	private LoaiSanPhamService loaisanphamService;

    @GetMapping("/loaisanpham")
    public String index(Model model) {
        model.addAttribute("loaisanphams", loaisanphamService.findAll());
        return "loaisanpham_list";
    }
    
    @GetMapping("/loaisanpham/create")
    public String create(Model model) {
        model.addAttribute("loaisanpham", new LoaiSanPham());
        return "loaisanpham_form";
    }
    
    @GetMapping("/loaisanpham/{id}/edit")
    public String edit(@PathVariable int id, Model model) {
        model.addAttribute("loaisanpham", loaisanphamService.findOne(id));
        return "loaisanpham_form";
    }
    
    @PostMapping("/loaisanpham/save")
    public String save(@Valid LoaiSanPham loaisanpham, BindingResult result, RedirectAttributes redirect) {
        if (result.hasErrors()) {
            return "loaisanpham_form";
        }
        loaisanphamService.save(loaisanpham);
        redirect.addFlashAttribute("success", "Saved loaisanpham successfully!");
        return "redirect:/loaisanpham";
    }
    
    @GetMapping("/loaisanpham/{id}/delete")
    public String delete(@PathVariable int id, RedirectAttributes redirect) {
    	loaisanphamService.delete(id);
        redirect.addFlashAttribute("success", "Deleted loaisanpham successfully!");
        return "redirect:/loaisanpham";
     }
    
    @GetMapping("/loaisanpham/search")
    public String search(@RequestParam("q") String q, Model model) {
        if (q.equals("")) {
            return "redirect:/loaisanpham";
        }
        
        model.addAttribute("loaisanphams", loaisanphamService.search(q));
        return "loaisanpham_list";
    }

}

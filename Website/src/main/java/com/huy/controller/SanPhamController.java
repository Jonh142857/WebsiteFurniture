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

import com.huy.domain.SanPham;
import com.huy.service.SanPhamService;

@Controller
public class SanPhamController {
	
	@Autowired
	private SanPhamService sanphamService;
	
    @GetMapping("/sanpham")
    public String sanpham(Model model) {
        model.addAttribute("sanphams", sanphamService.findAll());
        return "sanpham_list";
    }
    
    @GetMapping("/home")
    public String home(Model model) {
    	 model.addAttribute("sanphams", sanphamService.findAll());
        return "home";
    }
    
    @GetMapping("/sanpham/create")
    public String create(Model model) {
        model.addAttribute("sanpham", new SanPham());
        return "sanpham_form";
    }
    
    @GetMapping("/sanpham/{id}/edit")
    public String edit(@PathVariable int id, Model model) {
        model.addAttribute("sanpham", sanphamService.findOne(id));
        return "sanpham_form";
    }
    
    @PostMapping("/sanpham/save")
    public String save(@Valid SanPham sanpham, BindingResult result, RedirectAttributes redirect) {
        if (result.hasErrors()) {
            return "sanpham_form";
        }
        sanphamService.save(sanpham);
        redirect.addFlashAttribute("success", "Saved sanpham successfully!");
        return "redirect:/sanpham";
    }
    
    @GetMapping("/sanpham/{id}/delete")
    public String delete(@PathVariable int id, RedirectAttributes redirect) {
    	sanphamService.delete(id);
        redirect.addFlashAttribute("success", "Deleted sanpham successfully!");
        return "redirect:/sanpham";
     }
    
    @GetMapping("/sanpham/search")
    public String search(@RequestParam("q") String q, Model model) {
        if (q.equals("")) {
            return "redirect:/sanpham";
        }
        
        model.addAttribute("sanphams", sanphamService.search(q));
        return "sanpham_list";
    }

}

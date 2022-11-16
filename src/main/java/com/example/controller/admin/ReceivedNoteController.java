package com.example.controller.admin;

import com.example.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReceivedNoteController {

    @Autowired
    private IProductService productService;

    @Autowired
    private ICategoryService categoryService;
    
    @Autowired
	private IWareHouseService wareHouseService;
    
    @Autowired
	private IReceivedNoteService receivedNoteService;
    
    @Autowired
	private IReceivedNoteDetailService receivedNoteDetailService;
	
	@RequestMapping(value = "/admin/received-note", method = RequestMethod.GET)
	public ModelAndView getReceivedNote() {
		ModelAndView mav = new ModelAndView("admin/received-note");
		mav.addObject("products", productService.findAll());
		mav.addObject("categories", categoryService.getALlList());
		mav.addObject("warehouse",wareHouseService.findAll());
		mav.addObject("receivedNote", receivedNoteService.getAllList());
		return mav;
	}
	
	@RequestMapping(value = "/admin/received-detail/{id}", method = RequestMethod.GET)
	public ModelAndView getReceivedNoteDetail(@PathVariable("id") Long id) {
		ModelAndView mav = new ModelAndView("admin/received-note-detail");
		mav.addObject("receivedNoteDetail", receivedNoteDetailService.getListReceivedNoteDetail(id));
		mav.addObject("idReceivedNote", id);
		
		return mav;
	}
}

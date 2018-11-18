package com.sccc.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DemoController {
	@RequestMapping(value="/welcome")  //welcome要访问的url地址
    public  String  hello(){
        System.out.println("hello,springmvc");
        return "hello";
    }
	
	@RequestMapping("/findAll")
	public ModelAndView findAll() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hello");
		String aaa = "str";
		
		mv.addObject("aaa", aaa);
		
		
		return mv;
	}
}

package com.sccc.demo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DemoController {
	@RequestMapping(value="/welcome")  //welcome要访问的url地址
    public  String  hello(){
		
        return "hello";
    }
	
	@RequestMapping("/findAll")
	public List findAll() {
		System.out.println("aaa");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hello");
		String aaa = "str";
		
		mv.addObject("aaa", aaa);
		ArrayList<Object> arrayList = new ArrayList<>();
		arrayList.add("aaa");
		arrayList.add("bbb");
		arrayList.add("ccc");
		arrayList.add("ddd");
		
		
		
		return arrayList;
	}
}

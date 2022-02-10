package polycomputer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class indexController {
	@RequestMapping("/index")
	public String home() {
		return "producttrangchu/list";
	}
	@RequestMapping("/details")
	public String details() {
		return "producttrangchu/details";
	}
	@RequestMapping("/hang")
	public String hang() {
		return "brand/sanphamtheohang";
	}
	@RequestMapping("/cart")
	public String giohang() {
		return "cart/cart";
	}
}


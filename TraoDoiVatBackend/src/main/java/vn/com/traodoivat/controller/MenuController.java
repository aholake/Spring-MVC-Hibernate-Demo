package vn.com.traodoivat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import vn.com.traodoivat.service.MenuService;

@Controller
public class MenuController {

	@Autowired
	private MenuService menuService;
}

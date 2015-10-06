package vn.com.traodoivat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import vn.com.traodoivat.service.ChildMenuService;

@Controller
public class ChildMenuController {

	@Autowired
	private ChildMenuService childmenuService;
}

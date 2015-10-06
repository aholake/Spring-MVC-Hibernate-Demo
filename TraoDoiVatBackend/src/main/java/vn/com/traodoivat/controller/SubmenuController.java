package vn.com.traodoivat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import vn.com.traodoivat.service.SubmenuService;

@Controller
public class SubmenuController {

	@Autowired
	private SubmenuService submenuService;
}

package vn.com.traodoivat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import vn.com.traodoivat.service.CommentService;

@Controller
public class CommentController {

	@Autowired
	private CommentService commemtService;
}

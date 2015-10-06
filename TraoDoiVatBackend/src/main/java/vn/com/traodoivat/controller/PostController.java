package vn.com.traodoivat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import vn.com.traodoivat.service.PostService;

@Controller
public class PostController {

	@Autowired
	private PostService postService;
}

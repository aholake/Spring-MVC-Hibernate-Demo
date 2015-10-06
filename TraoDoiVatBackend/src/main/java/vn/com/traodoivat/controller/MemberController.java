package vn.com.traodoivat.controller;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import vn.com.traodoivat.model.Member;
import vn.com.traodoivat.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = URLFinalController.INSERTMEMBER, method = RequestMethod.GET)
	public @ResponseBody String insertMember(HttpServletRequest request,
			HttpServletResponse response) throws ParseException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Member member = new Member();
		member.setName("Nguyễn Tuấn Anh");
		member.setBirthday(new SimpleDateFormat("yyyy-MM-dd")
				.parse("14-07-1994"));
		member.setSex(1);
		member.setPhone("01653164732");
		member.setAvatar("../images/account/tuananh.jpg");
		member.setEmail("ntatvr@gmail.com");
		member.setAddress("Biên Hòa, Đồng Nai");
		member.setStar(Integer.parseInt("1"));
		member.setJoinDate(new SimpleDateFormat("yyyy-MM-dd")
				.parse("2015-05-13"));
		member.setIntroduce("Thông tin đang cập nhật");
		member.setActivity(1);
		this.memberService.insertMember(member);
		return "Member: " + member;
	}

	// @RequestMapping(value = URLFinalController.INSERTEMEMBER, method =
	// RequestMethod.GET)
	// public @ResponseBody String insertMember(HttpServletRequest request,
	// HttpServletResponse response) throws ParseException {
	// try {
	// request.setCharacterEncoding("utf-8");
	// response.setCharacterEncoding("utf-8");
	// } catch (UnsupportedEncodingException e) {
	// e.printStackTrace();
	// }
	// Member member = new Member();
	// member.setName(request.getParameter("name"));
	// member.setBirthday(new SimpleDateFormat("yyyy/MM/dd").parse(request
	// .getParameter("birthday")));
	// member.setSex(Integer.parseInt(request.getParameter("sex")));
	// member.setPhone(request.getParameter("phone"));
	// member.setAvatar(request.getParameter("avatar"));
	// member.setEmail(request.getParameter("email"));
	// member.setAddress(request.getParameter("address"));
	// member.setStar(Integer.parseInt(request.getParameter("star")));
	// member.setJoinDate(new SimpleDateFormat("yyyy/MM/dd").parse(request
	// .getParameter("joinDate")));
	// member.setIntroduce(request.getParameter("introduce"));
	// member.setActivity(Integer.parseInt(request.getParameter("activity")));
	// this.memberService.insertMember(member);
	// return "Member: " + member;
	// }

	@RequestMapping(value = URLFinalController.UPDATEMEMBER, method = RequestMethod.GET)
	public @ResponseBody String updateMember(@PathVariable("id") int id,
			HttpServletRequest request, HttpServletResponse response)
			throws ParseException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Member member = new Member();
		member.setName(request.getParameter("name"));
		member.setBirthday(new SimpleDateFormat("yyyy/MM/dd").parse(request
				.getParameter("birthday")));
		member.setSex(Integer.parseInt(request.getParameter("sex")));
		member.setPhone(request.getParameter("phone"));
		member.setAvatar(request.getParameter("avatar"));
		member.setEmail(request.getParameter("email"));
		member.setAddress(request.getParameter("address"));
		member.setStar(Integer.parseInt(request.getParameter("star")));
		member.setJoinDate(new SimpleDateFormat("yyyy/MM/dd").parse(request
				.getParameter("joinDate")));
		member.setIntroduce(request.getParameter("introduce"));
		member.setActivity(Integer.parseInt(request.getParameter("activity")));
		this.memberService.updateMember(member);
		return "Member: " + member;
	}

	@RequestMapping(value = URLFinalController.DELETEMEMBER, method = RequestMethod.GET, produces = { MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody String deleteMember(@PathVariable("memId") int memId,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Member member = this.memberService.getMemberById(memId);
		this.memberService.deleteMember(memId);
		return "Member: " + member;
	}

	@RequestMapping(value = URLFinalController.GETMEMBERBYID, method = RequestMethod.GET, headers = "Accept=application/json")
	public @ResponseBody Member getMemberById(@PathVariable("memId") int memId,
			HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Member member = this.memberService.getMemberById(memId);
		return member;
	}

	@RequestMapping(value = URLFinalController.LISTMEMBER, method = RequestMethod.GET, produces = { MediaType.APPLICATION_JSON_VALUE })
	public @ResponseBody List<Member> listMember(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		List<Member> memberList = this.memberService.listMember();
		return memberList;
	}

}

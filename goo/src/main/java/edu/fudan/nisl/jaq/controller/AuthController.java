package edu.fudan.nisl.jaq.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.fudan.nisl.jaq.model.Users;
import edu.fudan.nisl.jaq.service.UserService;


@Controller
@RequestMapping("/auth")
public class AuthController {

	@Autowired
	UserService userService;

	@RequestMapping("/login.do")
	public @ResponseBody String login2(HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Users user = userService.getUserByName(username);
		if (user == null || !user.getUsersPassword().equals(password)) {
			return "wrong username or password";
		} else {
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("userid", user.getId());
			request.getSession().setAttribute("username", user.getUsersName());
			request.getSession().setAttribute("roleid", user.getUsersRoleId());
			return "success";
		}

	}
}

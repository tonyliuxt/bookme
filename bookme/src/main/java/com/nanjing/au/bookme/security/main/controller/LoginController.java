package com.nanjing.au.bookme.security.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nanjing.au.bookme.RestFulUri;


/**
 * OMT web service Web Page Login management
 * @author tonyliu
 *
 */
@Controller
public class LoginController {

	@RequestMapping(value="/")
	public String index() {
		return "index";
	}

	@RequestMapping(value=RestFulUri.WEB_LOGIN)
	public String loginPage() {
		return "login";
	}

	@PreAuthorize("hasRole('USER')")
	@RequestMapping(value=RestFulUri.WEB_WELCOME)
	public String welcome() {
		return "user";
	}
	
	@PreAuthorize("hasRole('ADMIN')")
	@RequestMapping(value="/welcome")
	public String welcomePage() {
		return "admin";
	}

	@RequestMapping(value=RestFulUri.WEB_LOGOUT, method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null){
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}
	
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		return "accessDenied";
	}
	
	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
}

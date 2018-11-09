package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	// 不用request，根据input name属性，一样直接传递
	@RequestMapping("/login")
	public String login(String username, String password,String verificationcode) {
		if (userService.login(username, password,verificationcode) == "ok") {
			return "success";
		}
		return "login";
	}
   //---------批量删除----------	
	@RequestMapping("/list")
	public String userlist(HttpSession httpSession) {
		httpSession.setAttribute("userlist", userService.userlist());
		return "userlist";
	} 
	
	
	@RequestMapping("/del")
	public String DelMatch(HttpServletRequest request) {
		String Uid[]=request.getParameterValues("id");
		for(int i=0;i<Uid.length;i++) {
			userService.DelMatch(Uid[i]);
		}
		return "redirect:/user/list.action";
	}
	
	//--------表格形式更新---------
	@RequestMapping("/update")
	public String updatelist(HttpSession httpSession) {
		httpSession.setAttribute("updatelist", userService.updatelist()); 
		return "updatelist";
	}
	
	@RequestMapping("/updateuser")
	public String updateuser(String username,String password) {
		if(userService.updatetuser(username,password)=="ok") {
		return "redirect:/user/update.action";
	}
		return null;
	}
}

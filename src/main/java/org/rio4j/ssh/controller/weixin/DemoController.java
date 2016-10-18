package org.rio4j.ssh.controller.weixin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.rio4j.ssh.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.sword.wechat4j.menu.Menu;
import org.sword.wechat4j.menu.MenuManager;
import org.sword.wechat4j.token.TokenProxy;
import org.sword.wechat4j.user.LanguageType;
import org.sword.wechat4j.user.User;
import org.sword.wechat4j.user.UserManager;

@Controller
@RequestMapping("/WXApi/demo")
public class DemoController extends BaseController {

	public static final Logger logger = Logger.getLogger(DemoController.class);

	@ResponseBody
	@RequestMapping(value = "menu")
	public Menu menu(HttpServletRequest request) {
		MenuManager manager = new MenuManager();
		System.err.println(TokenProxy.accessToken());
		Menu menu = manager.getMenu();
		System.err.println(menu);
		return menu;
	}

	@ResponseBody
	@RequestMapping(value = "user")
	public List<User> user(HttpServletRequest request) {
		UserManager manager = new UserManager();
		List<String> list = manager.allSubscriber();
		List<User> users = new ArrayList<User>();
		for (String str : list) {
			users.add(manager.getUserInfo(str, LanguageType.zh_CN));
		}
		return users;
	}

	@RequestMapping(value = "demo")
	public String demo(HttpServletRequest request) {
		System.err.println(11);
		return "/WXApi/demo/demo";
	}

	@RequestMapping(value = "cropper")
	public String cropper(HttpServletRequest request) {
		System.err.println(11);
		return "/WXApi/demo/cropper";
	}
}

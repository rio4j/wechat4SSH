package org.rio4j.ssh.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.rio4j.ssh.controller.BaseController;
import org.rio4j.ssh.model.vo.Auth;
import org.rio4j.ssh.model.vo.Json;
import org.rio4j.ssh.model.vo.TreeNode;
import org.rio4j.ssh.service.AuthServiceI;
import org.rio4j.ssh.util.ExceptionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/authController")
public class AuthController extends BaseController {

	private static final Logger logger = Logger.getLogger(AuthController.class);
	@Autowired
	private AuthServiceI authService;

	@RequestMapping("/auth")
	public String auth() {
		return "/admin/auth";
	}

	@RequestMapping("/authAdd")
	public String authAdd() {
		return "/admin/authAdd";
	}

	@RequestMapping("/authEdit")
	public String authEdit() {
		return "/admin/authEdit";
	}
	
	@RequestMapping("/doNotNeedSession_tree")
	@ResponseBody
	public List<TreeNode> doNotNeedSession_tree(Auth auth) {
		return authService.tree(auth, false);
	}

	@RequestMapping("/doNotNeedSession_treeRecursive")
	@ResponseBody
	public List<TreeNode> doNotNeedSession_treeRecursive(Auth auth) {
		return authService.tree(auth, true);
	}
	
	@RequestMapping("/treegrid")
	@ResponseBody
	public List<Auth> treegrid(Auth auth) {
		return authService.treegrid(auth);
	}
	
	@RequestMapping("/add")
	public Json add(Auth auth) {
		Json j = new Json();
		try {
			authService.add(auth);
			j.setSuccess(true);
			j.setMsg("Add successfully");
		} catch (Exception e) {
			logger.error(ExceptionUtil.getExceptionMessage(e));
			j.setMsg("Add unsuccessfully");
		}
		return j;
	}
	
	@RequestMapping("/edit")
	public Json edit(Auth auth) {
		Json j = new Json();
		try {
			authService.edit(auth);
			j.setSuccess(true);
			j.setMsg("Edit successfully");
		} catch (Exception e) {
			logger.error(ExceptionUtil.getExceptionMessage(e));
			j.setMsg("Edit unsuccessfully");
		}
		return j;
	}
	
	@RequestMapping("/delete")
	public Json delete(Auth auth) {
		Json j = new Json();
		try {
			authService.delete(auth);
			j.setSuccess(true);
			j.setMsg("Delete successfully");
			j.setObj(auth.getCid());
		} catch (Exception e) {
			logger.error(ExceptionUtil.getExceptionMessage(e));
			j.setMsg("Delete unsuccessfully");
		}
		return j;
	}

}

package org.rio4j.ssh.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.rio4j.ssh.controller.BaseController;
import org.rio4j.ssh.model.vo.Menu;
import org.rio4j.ssh.model.vo.TreeNode;
import org.rio4j.ssh.service.MenuServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/menuController")
public class MenuController extends BaseController{

	private static final Logger logger = Logger.getLogger(MenuController.class);
	
	@Autowired
	private MenuServiceI menuService;
	
	@ResponseBody
	@RequestMapping("/doNotNeedSession_tree")
	public List<TreeNode> doNotNeedSession_tree(Menu menu) {
		return menuService.tree(menu, false);
	}
	
	@ResponseBody
	@RequestMapping("/doNotNeedSession_treeRecursive")
	public List<TreeNode> doNotNeedSession_treeRecursive(Menu menu) {
		return menuService.tree(menu, true);
	}

	@ResponseBody
	@RequestMapping("/treegrid")
	public List<Menu> treegrid(Menu menu) {
		return menuService.treegrid(menu);
	}
}

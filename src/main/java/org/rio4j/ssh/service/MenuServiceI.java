package org.rio4j.ssh.service;

import java.util.List;

import org.rio4j.ssh.model.vo.Menu;
import org.rio4j.ssh.model.vo.TreeNode;

public interface MenuServiceI {

	/**
	 * treegrid
	 * 
	 * @param menu
	 * @return
	 */
	public List<Menu> treegrid(Menu menu);
	
	/**
	 * get tree of menu
	 * 
	 * @param auth
	 * @param b
	 *            true/false - recursion of child nodes
	 * @return
	 */
	public List<TreeNode> tree(Menu menu, Boolean b);

}

package org.rio4j.ssh.controller;

import org.rio4j.ssh.controller.BaseController;
import org.rio4j.ssh.model.vo.DataGrid;
import org.rio4j.ssh.model.vo.Online;
import org.rio4j.ssh.service.OnlineServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/onlineController")
public class OnlineController extends BaseController {

	@Autowired
	private OnlineServiceI onlineService;

	@RequestMapping("/doNotNeedSession_onlineDatagrid")
	@ResponseBody
	public DataGrid doNotNeedSession_onlineDatagrid(Online online) {
		return onlineService.datagrid(online);
	}

}

package org.rio4j.ssh.controller.weixin;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.rio4j.ssh.controller.BaseController;
import org.rio4j.ssh.wechat.Wechat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/WXApi/api")
public class ApiController extends BaseController {

	public static final Logger logger = Logger.getLogger(ApiController.class);

	@RequestMapping(value = "valid")
	public void valid(HttpServletRequest request, HttpServletResponse response, PrintWriter out) {
		Wechat wechat = new Wechat(request);
		out.print(wechat.execute());
		out.flush();
		out.close();
	}
}

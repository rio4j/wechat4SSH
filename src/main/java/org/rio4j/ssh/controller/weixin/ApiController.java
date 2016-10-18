package org.rio4j.ssh.controller.weixin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.rio4j.ssh.controller.BaseController;
import org.rio4j.ssh.wechat.Wechat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/WXApi/api")
public class ApiController extends BaseController {

	public static final Logger logger = Logger.getLogger(ApiController.class);

	@RequestMapping(value = "valid", method = { RequestMethod.GET }, produces = "application/json;charset=UTF-8")
	public void valid(HttpServletRequest request, PrintWriter out) {
		Wechat wechat = new Wechat(request);
		out.print(wechat.execute());
		out.flush();
		out.close();
	}

	/** 
	 * 微信消息的处理 
	 *  
	 * @param request 
	 * @param out 
	 * @throws IOException 
	 */
	@RequestMapping(value = "dispose", method = { RequestMethod.POST }, produces = "application/xml;charset=UTF-8")
	public void dispose(HttpServletRequest request, HttpServletResponse response) throws IOException {
		/* 消息的接收、处理、响应 */

		// 将请求、响应的编码均设置为UTF-8（防止中文乱码）
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		// 调用核心业务类接收消息、处理消息
		// String respMessage = CoreService.processRequest(request);
		String respMessage = "ss";
		// 响应消息
		PrintWriter out = response.getWriter();
		out.print(respMessage);
		out.close();
	}
}

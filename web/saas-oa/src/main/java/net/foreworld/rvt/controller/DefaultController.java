package net.foreworld.rvt.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import net.foreworld.rvt.model.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author huangxin (3203317@qq.com)
 * @license LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @copyright FOREWORLD.NET
 *
 */
@Controller
public class DefaultController {

	private String index_ftl = "default/1.0.2/index";
	private String welcome_ftl = "default/1.0.2/welcome";

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public ModelAndView indexUI(HttpSession session) {
		ModelAndView result = new ModelAndView(index_ftl);
		// TODO
		User user = new User();
		user.setUser_name("admin");

		result.addObject("data_session_user", user);
		result.addObject("data_session_time", new Date());
		return result;
	}

	@RequestMapping(value = { "/welcome" }, method = RequestMethod.GET)
	public ModelAndView welcomeUI(HttpSession session) {
		ModelAndView result = new ModelAndView(welcome_ftl);
		return result;
	}
}

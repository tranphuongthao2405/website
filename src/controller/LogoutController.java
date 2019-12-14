package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.Constant;
@WebServlet(urlPatterns = "/logout")
public class LogoutController extends HttpServlet {
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
			 HttpSession session = req.getSession();

				session.removeAttribute("account"); //remove session

				Cookie[] cookies = req.getCookies();

				if (cookies != null) {
					for (Cookie cookie : cookies) {
						if (Constant.COOKIE_REMEMBER.equals(cookie.getName())) {
							cookie.setMaxAge(0); // <=> remove cookie
							resp.addCookie(cookie); // add again
							break;
						}
					}
				}

			   resp.sendRedirect("./login");
	}

}

package controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CartItem;

@WebServlet(urlPatterns = { "/member/cart/remove" }) // ?pId=?123
public class CartItemRemove extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object obj = httpSession.getAttribute("cart");
		String pId = req.getParameter("pId");
		if (obj != null) {
			Map<Integer, CartItem> map = (Map<Integer, CartItem>) obj;
			// remove product
			map.remove(Integer.parseInt(pId));

			// update session
			httpSession.setAttribute("cart", map);
		}
		resp.sendRedirect(req.getContextPath() + "/member/cart");
	}
}

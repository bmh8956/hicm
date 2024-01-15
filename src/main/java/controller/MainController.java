package controller;

import common.Common;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import member.MemberDTO;
import org.json.JSONArray;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("*.do")
public class MainController extends HttpServlet {
	Common cmm = new Common();
	public MainController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//		res.getWriter().append("Served at: ").append(req.getContextPath());
		req.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		PrintWriter pwr = res.getWriter();
		System.out.println(path);
		MemberDTO test = new MemberDTO();


		if(path.equals("/test2.do")) {
			res.sendRedirect("test2.jsp");
		} else if(path.equals("/all_tables.do")) {
			JSONArray jo = cmm.all_tables();

			pwr.println(jo);
		} else if(path.equals("/all_cols.do")) {
			String tb = req.getParameter("tb");
			JSONArray cols = cmm.all_cols(tb);
			System.out.println(cols);

			pwr.println(cols);
		} else if(path.equals("/test.do")) {
			res.sendRedirect("test.jsp");
		} else if(path.equals("/joinForm.do")) {
			res.sendRedirect("register.jsp");
		} else if(path.equals("/loginForm.do")) {
			res.sendRedirect("login.jsp");
		} else if(path.equals("/join.do")) {

		} else if(path.equals("/list.do")) {
			res.sendRedirect("list.jsp");
		} else if(path.equals("/editor.do")) {
			res.sendRedirect("editor_test.jsp");
		} else if(path.equals("/smarteditor2/SmartEditor2Skin.do")) {
			res.sendRedirect("smarteditor2/SmartEditor2Skin.html");
		} else {
			res.sendRedirect("404.jsp");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}
}

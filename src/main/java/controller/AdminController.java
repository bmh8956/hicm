package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import member.MemberDAO;
import member.MemberDTO;
import org.json.JSONObject;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

@WebServlet("*.adm")
public class AdminController extends HttpServlet {

	public AdminController() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//		res.getWriter().append("Served at: ").append(req.getContextPath());
		req.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		String def = "/hicommunity/admin/";
		PrintWriter pwr = res.getWriter();
		System.out.println(path);
		HttpSession session = req.getSession();

		if (session.getAttribute("admin") == null && !path.equals("/loginForm.adm")) {
			String msg = URLEncoder.encode("로그인이 필요한 페이지입니다.", "UTF-8");
			String url = URLEncoder.encode("/hicommunity/admin/loginForm.jsp", "UTF-8");
			res.sendRedirect(def + "fix/alert.jsp?msg=" + msg + "&url=" + url);
		} else if (path.equals("/loginForm.adm")) {
			System.out.println(path + " succ");
			res.sendRedirect(def + "loginForm.jsp");
		} else if (path.equals("/index.adm")) {
			res.sendRedirect(def + "index.jsp");
		} else if (path.equals("/main.adm")) {
			res.sendRedirect(def + "main.jsp");
		} else if (path.equals("/users.adm")) {
			res.sendRedirect(def + "users.jsp");
		} else if (path.equals("/admin.adm")) {
			res.sendRedirect(def + "admin.jsp");
		} else if (path.equals("/board.adm")) {
			res.sendRedirect(def + "board.jsp");
		} else if (path.equals("/category.adm")) {
			res.sendRedirect(def + "category.jsp");
		}


	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		String def = "/hicommunity/admin/";
		PrintWriter pwr = res.getWriter();
		System.out.println(path);
		HttpSession session = req.getSession();

		if (path.equals("/login.adm")) {
			System.out.println("login start");
			MemberDTO dto = new MemberDTO();
			dto.setMb_id(req.getParameter("mb_id"));
			dto.setMb_pw(req.getParameter("mb_pw"));
			dto.setMb_auth(req.getParameter("mb_auth"));
			dto.setMb_is_view("Y");
			dto.setMb_is_del("N");
			dto.setLoginType(Boolean.parseBoolean(req.getParameter("mb_auth")));
			MemberDTO dto2 = MemberDAO.getAdmin(dto);
			JSONObject r = new JSONObject();
			ObjectMapper om = new ObjectMapper();
			if (dto2 == null) {
				r.put("msg", "fail");
			} else {
				String result = om.writeValueAsString(dto2);
				r.put("admin", result);
				r.put("msg", "success");
			}
			session.setAttribute("admin", dto2);
			System.out.println("login end");
			pwr.println(r);
		}
//		doGet(req, res);
	}
}

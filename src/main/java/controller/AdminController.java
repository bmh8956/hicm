package controller;

import category.CategoryDAO;
import category.CategoryDTO;
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
import java.util.ArrayList;
import java.util.List;

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

		if (session.getAttribute("admin") == null && !path.equals("/loginForm.adm") && !path.equals("/joinForm.adm")) {
			String msg = URLEncoder.encode("로그인이 필요한 페이지입니다.", "UTF-8");
			String url = URLEncoder.encode("/hicommunity/loginForm.adm", "UTF-8");
			res.sendRedirect(def + "fix/alert.jsp?msg=" + msg + "&url=" + url);
		} else if(path.equals("/joinForm.adm")) {
			int cnt = MemberDAO.adminCnt();
			if(!(cnt == 0)) {
//				res.sendRedirect(def + "fix/alert.jsp");
				req.getRequestDispatcher("/admin/fix/alert.jsp").forward(req, res);
			} else {
				req.getRequestDispatcher("/admin/joinForm.jsp").forward(req, res);
			}
		} else if (path.equals("/loginForm.adm")) {
			System.out.println(path + " succ");
			int cnt = MemberDAO.adminCnt();
			req.setAttribute("cnt", cnt);
			req.getRequestDispatcher("/admin/loginForm.jsp").forward(req, res);
//			res.sendRedirect(def + "loginForm.jsp");
		} else if (path.equals("/index.adm")) {
			res.sendRedirect(def + "index.jsp");
		} else if (path.equals("/main.adm")) {
			res.sendRedirect(def + "main.jsp");
		} else if (path.equals("/users.adm")) {
			res.sendRedirect(def + "users.jsp");
		} else if (path.equals("/admin.adm")) {
//			res.sendRedirect(def + "admin.jsp");
			List<MemberDTO> list = MemberDAO.getAdminList();
//			System.out.println(list);
			req.setAttribute("adminList", list);
			req.getRequestDispatcher("/admin/admin.jsp").forward(req, res);
		} else if (path.equals("/board.adm")) {
			res.sendRedirect(def + "board.jsp");
		} else if (path.equals("/category.adm")) {
			List<CategoryDTO> list = new ArrayList<>();
			list = CategoryDAO.get_list();
			req.setAttribute("list", list);
			req.getRequestDispatcher("/admin/category2.jsp").forward(req, res);
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
		} else if(path.equals("/join.adm")) {
			System.out.println("join start");
			MemberDTO dto = new MemberDTO();
			dto.setMb_name(req.getParameter("mb_name"));
			dto.setMb_id(req.getParameter("mb_id"));
			dto.setMb_auth("admin");
			dto.setMb_pw(req.getParameter("mb_pw"));
			dto.setMb_email(req.getParameter("mb_email"));
			dto.setMb_gender(req.getParameter("mb_gender"));
			int join = MemberDAO.join(dto);
			JSONObject r = new JSONObject();
			ObjectMapper om = new ObjectMapper();
			if(join == 0) {
				r.put("msg", "fail");
			} else {
				r.put("msg", "success");
			}
			System.out.println("join end");
			pwr.println(r);
		} else if(path.equals("/insertCate.adm")) {
			CategoryDTO dto = new CategoryDTO();
			dto.setCt_name(req.getParameter("ct_name"));
			dto.setCt_parent(Integer.parseInt(req.getParameter("ct_parent")));
			int result = CategoryDAO.set_category(dto);
			JSONObject r = new JSONObject();
			ObjectMapper om = new ObjectMapper();
			if(result == 0) {
				r.put("msg", "fail");
			} else {
				r.put("msg", "success");
				r.put("ct", om.writeValueAsString(dto));
			}
			pwr.println(r);
		} else if(path.equals("/delete_cate.adm")) {
			CategoryDTO dto = new CategoryDTO();
			dto.setCt_seq(Integer.parseInt(req.getParameter("ct_seq")));
			int result = CategoryDAO.delete(dto);
			JSONObject r = new JSONObject();
			ObjectMapper om = new ObjectMapper();
			if(result == 0) {
				r.put("msg", "fail");
			} else {
				r.put("msg", "success");
			}
			pwr.println(r);
		} else if(path.equals("/getSub.adm")) {
			CategoryDTO dto = new CategoryDTO();
			dto.setCt_parent(Integer.parseInt(req.getParameter("ct_seq")));
			List<CategoryDTO> list = CategoryDAO.get_list_sub(dto);
			JSONObject r = new JSONObject();
			if(list.isEmpty()) {
				r.put("msg", "fail");
			} else {
				r.put("msg", "success");
				r.put("list", list);
			}
			pwr.println(r);
		} else if(path.equals("/category_list.adm")) {
			List<CategoryDTO> list = new ArrayList<>();
			list = CategoryDAO.get_list();
			JSONObject r = new JSONObject();
			if(!list.isEmpty()) {
				r.put("msg", "success");
				r.put("list", list);
			} else {
				r.put("msg", "fail");
			}
			pwr.println(r);
		}
//		doGet(req, res);
	}
}
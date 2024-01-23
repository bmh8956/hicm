package controller;

import board.BoardDTO;
import category.CategoryDAO;
import category.CategoryDTO;
import com.fasterxml.jackson.databind.ObjectMapper;
import common.Common;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import member.MemberDAO;
import member.MemberDTO;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.List;

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

		List<CategoryDTO> cList = CategoryDAO.get_list();
		req.setAttribute("cate_list", cList);

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
//			res.sendRedirect("register.jsp");
			req.getRequestDispatcher("register.jsp").forward(req, res);
		} else if(path.equals("/loginForm.do")) {
//			res.sendRedirect("login.jsp");
			req.getRequestDispatcher("login.jsp").forward(req, res);
		} else if(path.equals("/list.do")) {

//			res.sendRedirect("list.jsp");
			req.getRequestDispatcher("list.jsp").forward(req, res);
		} else if(path.equals("/editor.do")) {
			res.sendRedirect("editor_test.jsp");
		} else if(path.equals("/smarteditor2/SmartEditor2Skin.do")) {
			res.sendRedirect("smarteditor2/SmartEditor2Skin.html");
		} else if(path.equals("/writeForm.do")) {

			req.getRequestDispatcher("writeForm.jsp").forward(req, res);
		} else {
			res.sendRedirect("404.jsp");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		PrintWriter pwr = res.getWriter();

		HttpSession session = req.getSession();

		 if(path.equals("/join.do")) {
			MemberDTO dto = new MemberDTO();
			dto.setMb_id(req.getParameter("mb_id"));
			dto.setMb_pw(req.getParameter("mb_pw"));
			dto.setMb_name(req.getParameter("mb_name"));
			dto.setMb_email(req.getParameter("mb_email"));
			dto.setMb_gender(req.getParameter("mb_gender"));
			dto.setMb_birth(req.getParameter("mb_birth"));
			dto.setMb_auth("user");
			int result = MemberDAO.join(dto);
		    JSONObject r = new JSONObject();
			ObjectMapper om = new ObjectMapper();
			if(result == 0) {
				r.put("msg", "fail");
			} else {
				r.put("msg", "success");
			}
			pwr.println(r);
		} else if(path.equals("/login.do")) {
			 MemberDTO dto = new MemberDTO();
			 dto.setMb_id(req.getParameter("mb_id"));
			 dto.setMb_pw(req.getParameter("mb_pw"));
			 dto.setMb_auth("user");
			 dto.setMb_is_view("Y");
			 dto.setMb_is_del("N");
			 MemberDTO user = new MemberDTO();
			 JSONObject r = new JSONObject();
			 ObjectMapper om = new ObjectMapper();
			 user = MemberDAO.userLogin(dto);
			 if(user == null || user.getMb_id().trim().equals("") || user.getMb_id() == null) {
				r.put("msg", "fail");
			 } else {
			    r.put("msg", "success");
				session.setAttribute("user", user);
			 }
			 pwr.println(r);
		 } else if(path.equals("/logout.do")) {
			 session.removeAttribute("user");
			 JSONObject r = new JSONObject();
			 ObjectMapper om = new ObjectMapper();
			 r.put("msg", "success");
			 pwr.println(r);
		 }
//		doGet(req, res);
	}
}

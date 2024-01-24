package common;

import board.BoardDAO;
import board.BoardDTO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("*.fi")
@MultipartConfig(
		maxFileSize = 1024 * 1024 * 5,
		maxRequestSize = 1024 * 1024 * 50
)
public class FileController extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.getWriter().append("Served at: ").append(req.getContextPath());
		req.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		PrintWriter pwr = res.getWriter();

		if(path.equals("/boardInsert.fi")) {
			String name = req.getParameter("bd_img");
			int result = 0;

			BoardDTO dto = new BoardDTO();
			dto.setBd_type("user");
			dto.setBd_title(req.getParameter("bd_title"));
			dto.setMb_seq(Integer.parseInt(req.getParameter("mb_seq")));
			dto.setCt_seq(Integer.parseInt(req.getParameter("ct_seq")));
			dto.setMb_id(req.getParameter("mb_id"));
			dto.setBd_content(req.getParameter("bd_content"));
			String saveDirec = "C:\\intellij workspace\\hicm\\src\\main\\webapp\\upload\\image";
			String origin = FileUtil.uploadFile(req, saveDirec, name);
			String saveFileName = FileUtil.reName(saveDirec, origin);
			dto.setOriginName(origin);
			dto.setSaveName(saveFileName);
			JSONObject r = new JSONObject();
			r.put("origin_name", origin);
			r.put("save_name", saveFileName);
//			r.put("file_path", saveDirec + File.separator + saveFileName);
//			r.put("file_path", "upload/image" + File.separator + saveFileName);
			r.put("file_path", "upload/image/" + saveFileName);
			dto.setBd_img(r.toString());
			System.out.println(dto);

			JSONObject r2 = new JSONObject();
			result = BoardDAO.insert(dto);
			if(result != 0) {
				r2.put("msg", "success");
			} else {
				r2.put("msg", "fail");
			}
			pwr.println(r2);
		}

//		doGet(req, res);
	}

}

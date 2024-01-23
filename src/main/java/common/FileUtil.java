package common;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FileUtil {

	private static final String UPLOAD_PATH = "C:\\intellij workspace\\hicm\\src\\main\\webapp\\upload\\image";

	public static String uploadFile(HttpServletRequest req, String directory, String origin) throws ServletException, IOException {
		Part part = req.getPart("img");
		if(!origin.isEmpty()) {
			part.write(directory + File.separator + origin);
		}
		return origin;
	}

	public static String reName(String dir, String name) {
		String name1 = name.substring(name.lastIndexOf("."));
		String now = new SimpleDateFormat("yyyyMMdd_hmsS").format(new Date());
		String new_name = now + name1;
		File oldFile = new File(dir + File.separator + name);
		File newFile = new File(dir + File.separator + new_name);
		oldFile.renameTo(newFile);

		return new_name;
	}
}

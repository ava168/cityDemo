package com.nt.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/file")
public class FileController {
	
	
	
	
	
	

	@RequestMapping(value = "/upload")
	@ResponseBody
	public String upload(MultipartFile file, HttpServletRequest request) throws IOException {
//		创建文件上传目录
		String path = request.getSession().getServletContext().getRealPath("upload");
		System.out.println(path);
		//文件名
		String fileName = file.getOriginalFilename();
		File dir = new File(path, fileName);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		file.transferTo(dir);
		return fileName;
	}

	@RequestMapping("/down")
	public void down(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String fileName = request.getSession().getServletContext().getRealPath("upload") + "/book.txt";

		InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));

		String filename = "用户手册.txt";

		filename = URLEncoder.encode(filename, "UTF-8");

		response.addHeader("Content-Disposition", "attachment;filename=" + filename);

		response.setContentType("multipart/form-data");

		BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
		int len = 0;
		while ((len = bis.read()) != -1) {
			out.write(len);
			out.flush();
		}
		out.close();
	}
}

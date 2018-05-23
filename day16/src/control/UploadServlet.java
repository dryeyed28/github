package control;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import upload.MyRenamePolicy;

public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("파이렁ㅂ로드를 선택하세요.");
		out.print("<a href=\"upload.html\">업로드</ㅁ>");
		return;
	}

	private String saveDirectory = "d:\\files";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MultipartRequest mr;
		int maxPostSize = 1024 * 10;
		String encoding = "UTF-8";
		try {
			mr = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, new MyRenamePolicy());
			String txt1 = mr.getParameter("txt1");
			File file1 = mr.getFile("file1");
			File file2 = mr.getFile("file2");

			System.out.println(file1.getName());
			System.out.println(file2.getName());
		} catch (IOException e) {
			e.printStackTrace(); // maxPostSize, Posted content
		}
	}
}

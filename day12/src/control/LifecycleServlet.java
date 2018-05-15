package control;

import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LifecycleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String devName;
	private FileInputStream fis;
       
    public LifecycleServlet() {
        super();
        System.out.println("LifecycleServlet()생성자호출");
       /* ServletContext sc = getServletContext();
		devName = sc.getInitParameter("devName");*/
    }
    public void init(ServletConfig config) throws ServletException {
		super.init(config);
    	System.out.println("init()호출");
    	ServletContext sc = getServletContext();
 		devName = sc.getInitParameter("devName");
 		
 		String fileName = this.getInitParameter("fileName"); 
 		String realPath = sc.getRealPath(fileName);
 		System.out.println(realPath);
 		try {
 			//fis = new FileInputStream(fileName);
 			fis = new FileInputStream(realPath);
 			System.out.println((char)fis.read());
 		}catch(IOException e) {
 			e.printStackTrace();
 		}		
	}

	public void destroy() {
		System.out.println("destroy()호출");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()호출");
		//String devName = "오문정";
		//System.out.println("총책임:"+devName);
		
		System.out.println("총책임:"+devName);
		
		/*String fileName = "a.txt";
		FileInputStream fis = new FileInputStream(fileName);*/
		
		System.out.println(request.getParameter("t"));
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()호출");
	}

}

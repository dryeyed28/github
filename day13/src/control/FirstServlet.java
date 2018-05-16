package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstServlet
 */
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstServlet(){
    	System.out.println("FirstServlet()");  
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init()");
	}
	
	public void destroy() {
		System.out.println("destroy()");
	}

	protected void doGet(HttpServletRequest request, 
			             HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		
		//�������
		StringBuffer url = request.getRequestURL();//http://192.168.12.55:8080/day1/first.do
		String uri = request.getRequestURI();// /day1/first.do
		String contextPath = request.getContextPath(); //  /day1
		String servletPath = request.getServletPath(); //  /first.do
		System.out.println(url);
		System.out.println(uri);
		System.out.println(contextPath);
		System.out.println(servletPath);

//http://localhost:8080/day1/first.do		
//http://localhost:8080/day1/first.do?id=i1&pwd=p1&it=java&it=sql&it=jsp
		//��û���޵����� ����
		String queryString = request.getQueryString();
		String idValue = request.getParameter("id");
		String pwdValue = request.getParameter("pwd");
		String []itValue = request.getParameterValues("it");
		
		System.out.println(queryString);
		System.out.println(idValue);
		System.out.println(pwdValue);
		if(itValue != null) {
			for(String value:itValue){ //for(int i=0; i<itValues.length; i++)
				System.out.println(value);
			}
		}
		/*try {
			for(String value:itValue){ //for(int i=0; i<itValues.length; i++)
				System.out.println(value);
			}
		}catch(NullPointerException e) {
		}*/
		
		//��û�������
		Enumeration<String>names = request.getHeaderNames();
		while(names.hasMoreElements()) {
			String name = names.nextElement();
			String value = request.getHeader(name);
			System.out.println(name +":" + value);
		}
		String userAgentValue = request.getHeader("user-agent");
		if(userAgentValue.contains("Chrome")) {
			System.out.println("ũ�Һ��������� �����߽��ϴ�.");
		}else if(userAgentValue.contains("Trident")) {
			System.out.println("IE���������� �����߽��ϴ�.");
		}
		
		//������������
		response.setContentType("text/html;charset=utf-8");
		//response.setContentType("text/plain;charset=utf-8");
		//response.setContentType("texttttttttttt");
		
		//������½�Ʈ�����
		PrintWriter out =  response.getWriter(); //getOutputStream()
		//����		
		out.write("<h1>ù��° ������ �������Դϴ�</h1>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
	}
}
package control;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CustomerService;
import service.OrderService;
import service.ProductService;
import service.RepBoardService;
import service.TestService;
import service.ZipService;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProductService productService = new ProductService();
    private CustomerService customerService = new CustomerService();
    private ZipService zipService = new ZipService();
    private OrderService orderService = new OrderService();
    private RepBoardService repboardService = new RepBoardService();
	private Properties env;
    
    public FrontController() {
        super();
    }
    
    public void init() throws ServletException {
    	super.init();
    	//String encoding = this.getInitParameter("encoding");

    	//my.properties파일을 읽어서 Properties객체화
    	env = new Properties();
    	ServletContext application = getServletContext();
    	//String filePath = application.getRealPath("/WEB-INF/my.properties");		 
    	String fileName = this.getInitParameter("realPath");
		String realPath = 
				application.getRealPath(fileName);
		try {
			FileInputStream fis = new FileInputStream(realPath);
			env.load(fis);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
    }
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TestService service = TestService.getInstance();
		System.out.println(service.getI())
		;
		String encoding = this.getInitParameter("encoding");
		System.out.println(request.getServletPath()); // /a.do
		String path = request.getServletPath();
		
		Controller c = null;
		String forwardURL = "";
		
		//my.properties파일을 읽어서 Properties객체화
		Properties env = new Properties();
		
		ServletContext application = getServletContext();
		//String filePath = application.getRealPath("/WEB-INF/my.properties");
		String fileName = this.getInitParameter("realPath");
		String realPath = 
				application.getRealPath(fileName);
		FileInputStream fis = new FileInputStream(realPath);
		env.load(fis);
		/*String key = "/productlist.do";
		String className = env.getProperty(key);
		System.out.println(className);*/
		String key = path;
		String className = env.getProperty(key);
		
		//클래스이름(eg:ProductListController)으로 
		//ProductListController.class을 찾아 JVM으로 로드
		//클래스이름(eg:ProductDetailController)으로 
		//ProductDetailController.class을 찾아 JVM으로 로드
		
		try {
			Class clazz = Class.forName(className);
			Object obj = null;
					
			Constructor[] constructors = clazz.getConstructors();
			// 객체생성   obj = new ProductListController();
			//Object obj = clazz.newInstance();
			
			/*for(Constructor constructor: constructors) {
				System.out.println(
				constructor.getParameterTypes()[0].getName());
			}*/
			/*if("service.ProductService".equals(constructors[0].getParameterTypes()[0].getName())) {
				clazz.newInstance();			
			}*/
			
			//생성자가 1개이고 매개변수가 없는 생성자인 경우
			//setter메서드호출로 ProductService주입
			if(constructors.length == 1 && 
					constructors[0].getParameterCount() == 0) {
				obj = clazz.newInstance(); 
				Method[] methods = clazz.getDeclaredMethods();
				for(Method m: methods) {
					String methodName = m.getName();
					if(methodName.startsWith("set") && m.getParameterCount()==1) {
						if("service.ProductService".equals(m.getParameterTypes()[0].getName())){
							m.invoke(obj, productService);
							break;
						} else if("service.CustomerService".equals(m.getParameterTypes()[0].getName())){
							m.invoke(obj, customerService);
							break;
						} else if("service.ZipService".equals(m.getParameterTypes()[0].getName())) {
							m.invoke(obj, zipService);
							break;
						} else if("service.OrderService".equals(m.getParameterTypes()[0].getName())) {
							m.invoke(obj, orderService);
							break;
						} else if("service.repboardService".equals(m.getParameterTypes()[0].getName())) {
							m.invoke(obj, repboardService);
							break;
						}
					}
				}
				
			//생성자갯수가 2개이상인 경우
			//생성자호출로 ProductService주입
			}else if(constructors.length > 1) {
				//매개변수가 1개이고
				//매개변수의 타입이 ProductService타입인 경우
				for(Constructor constructor:constructors) {
					if(constructor.getParameterCount() == 1) {
						if("service.ProductService".equals(constructor.getParameters()[0].getType().getName())){
							obj = constructor.newInstance(productService);
						}else if("service.CustomerService".equals(constructor.getParameters()[0].getType().getName())){
							obj = constructor.newInstance(customerService);
						}else if("service.ZipService".equals(constructor.getParameters()[0].getType().getName())){
							obj = constructor.newInstance(zipService);
						}else if("service.OrderService".equals(constructor.getParameters()[0].getType().getName())) {
							obj = constructor.newInstance(orderService);
						}else if("service.repboardService".equals(constructor.getParameterTypes()[0].getName())) {
							obj = constructor.newInstance(repboardService);
						}
					}
				}
			}
			//execute메서드 호출방법 1
			/*for(Method m: methods) {
				if("execute".equals(m.getName())){
					forwardURL = 
					 (String)m.invoke(obj, request, response);
					break;
				}
			}*/
			
			//execute메서드 호출방법 2
			Method m = clazz.getDeclaredMethod("execute",HttpServletRequest.class, HttpServletResponse.class);
			forwardURL = (String)m.invoke(obj, request, response);
			
			//execute메서드 호출방법 3
			//forwardURL = ((Controller)obj).execute(request, response);	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();

		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*if("/productlist.do".equals(path)) {
			c = new ProductListController(productService);
			
		}else if("/productdetail.do".equals(path)) {
			c = new ProductDetailController(productService);
		}*/
		//forwardURL  = c.execute(request, response);
		System.out.println("forwardURL: " + forwardURL);
		//if(forwardURL.contains("redirect:")) {
		if(forwardURL == null){
		}else if(forwardURL.contains("redirect:")) {
			String redirectURL = 
					forwardURL.substring("redirect:".length());
			System.out.println("redirectURL:" + redirectURL);
			if(redirectURL.trim().equals("")) {
				redirectURL = "/";
			}
			response.sendRedirect(redirectURL);
		}else {
			RequestDispatcher rd = 
				request.getRequestDispatcher(forwardURL);
			rd.forward(request, response);
		}
	}
}

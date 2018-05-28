package control;

import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.RewardService;



public class YouthDepotFrontControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Properties env;
	private RewardService RewardService;
	public YouthDepotFrontControllerServlet() {}
	
	public void init() throws ServletException {
		super.init();
		
		env = new Properties();
		ServletContext application = getServletContext();
		String envFileName = 
				this.getInitParameter("contextConfigLocation"); 
		String filePath = 
				application.getRealPath(envFileName);
				//application.getRealPath("/WEB-INF/my.properties");
		try {
			FileInputStream fis = new FileInputStream(filePath);
			env.load(fis);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getServletPath());
		String path = request.getServletPath();

		YouthDepotController c=null;
		String forwardURL="";

		
		
		String key = path;
		String className = env.getProperty(key);
		//클래스이름(eg:ProductListController)으로 
		//ProductListController.class을 찾아 JVM으로 로드
		//클래스이름(eg:control.ProductDetailController)으로 
		//control.ProductDetailController.class을 찾아 JVM으로 로드
		try {
			Class clazz = Class.forName(className);
			Object obj = null;
			
			Constructor[] constructors = 
					clazz.getConstructors();
			
			
			//생성자가 1개이고 매개변수가 없는 생성자인 경우
			//setter메서드호출로 ProductService주입
			if(constructors.length == 1 && 
					constructors[0].getParameterCount() == 0) {
				obj = clazz.newInstance(); 
				Method[] methods = clazz.getDeclaredMethods();
				for(Method m: methods) {
					String methodName = m.getName();
					if(methodName.startsWith("set") && m.getParameterCount()==1) {
						if("service.RewardService".equals(m.getParameterTypes()[0].getName())){
							m.invoke(obj, RewardService);
							break;
						}/*else if("service.CustomerService".equals(m.getParameterTypes()[0].getName())){
							m.invoke(obj, productService);
							break;
						}else if("service.ZipService".equals(m.getParameterTypes()[0].getName())){
							m.invoke(obj, zipService);
							break;
						}else if("service.OrderService".equals(m.getParameterTypes()[0].getName())){
							m.invoke(obj, orderService);
							break;
						}else if("service.RepBoardService".equals(m.getParameterTypes()[0].getName())){
							m.invoke(obj, repBoardService);
							break;
						}*/
					}
				}
				
			//생성자갯수가 2개이상인 경우
			//생성자호출로 ProductService주입
			}else if(constructors.length > 1) {
				//매개변수가 1개이고
				//매개변수의 타입이 ProductService타입인 경우
				for(Constructor constructor:constructors) {
					if(constructor.getParameterCount() == 1) {
						if("service.RewardService".equals(constructor.getParameters()[0].getType().getName())){
							obj = constructor.newInstance(RewardService);

						}/*else if("service.CustomerService".equals(constructor.getParameters()[0].getType().getName())){
							obj = constructor.newInstance(customerService);
							
						}else if("service.ZipService".equals(constructor.getParameters()[0].getType().getName())){
							obj = constructor.newInstance(zipService);
							
						}else if("service.OrderService".equals(constructor.getParameters()[0].getType().getName())){
							obj = constructor.newInstance(orderService);
						}else if("service.RepBoardService".equals(constructor.getParameters()[0].getType().getName())){
							obj = constructor.newInstance(repBoardService);
						}
						break;*/
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
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
		System.out.println(forwardURL);
		if(forwardURL == null){
		}else if(forwardURL.contains("redirect:")) {//href요청
			String redirectURL = 
					forwardURL.substring("redirect:".length());
			System.out.println("redirectURL:" + redirectURL);
			response.encodeRedirectURL(redirectURL);
			if (redirectURL.trim().equals("")) {//재요청
				redirectURL = "/";
			}
			response.sendRedirect(redirectURL);
		}else {//ajax요청
			RequestDispatcher rd = 
				request.getRequestDispatcher(forwardURL);
			rd.forward(request, response);
		}
	}

}





package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import service.TestService;

/**
 * Application Lifecycle Listener implementation class ContextLoaderListener
 *
 */
public class ContextLoaderListener implements ServletContextListener {

   
    public ContextLoaderListener() {
    	System.out.println("ContextLoaderListener()호출됨");
    }

    

    public void contextInitialized(ServletContextEvent arg0)  { 
    	System.out.println("ContextLoaderListener의 contextInitialized()호출됨");
    	TestService service = TestService.getInstance();
    	service.setI(99);
    }
    
    public void contextDestroyed(ServletContextEvent arg0)  {
    	System.out.println("ContextLoaderListener contextDestroyed()호출됨");
    }
	
}

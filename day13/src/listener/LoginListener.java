package listener;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class LoginListener implements HttpSessionAttributeListener {

  
    public LoginListener() {

    }
    private int loginCnt=0;
    public void attributeAdded(HttpSessionBindingEvent event)  { 
    	System.out.println(event.getSource());
    	System.out.println(event.getName());
    	System.out.println(event.getValue());
    	if(event.getName().equals("loginInfo")) {
    		loginCnt++;
    		System.out.println("로그인한 사용자수 : " + loginCnt);
    	}
    }

    public void attributeRemoved(HttpSessionBindingEvent event)  { 
    	if(event.getName().equals("loginInfo")) {
    		loginCnt--;
    		System.out.println("로그인한 사용자수 : " + loginCnt);

    	}

    }

    public void attributeReplaced(HttpSessionBindingEvent arg0)  { 
     
    }
	
}

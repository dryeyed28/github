package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter {
	private String encoding;
   
    public CharacterEncodingFilter() {
       System.out.println("CharacterEncodingFilter()생성자호출됨");
    }
    
    public void init(FilterConfig fConfig) throws ServletException {
    	System.out.println("CharacterEncodingFilter의 init()호출됨");
    	encoding = fConfig.getInitParameter("encoding");
    	//encoding = this.getInitParameter("encoding");

	}

	public void destroy() {
	
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("CharacterEncodingFilter의 doFilter()호출됨");
		request.setCharacterEncoding(encoding);

		chain.doFilter(request, response);

	}
}

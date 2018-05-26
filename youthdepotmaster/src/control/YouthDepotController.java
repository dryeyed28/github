package control;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface YouthDepotController {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException;
}

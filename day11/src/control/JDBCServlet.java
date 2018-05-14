package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class JDBCServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*1)JDBC드라이버 로드*/
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return;
		}
		/*2)DB와 연결 */
		Connection con = null;
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="kitri";
		String password="kitri";
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			con = DriverManager.getConnection(url, user, password);
			out.print("오라클 접속성공!");			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 /*3)SQL문장을 DB서버로 송신
		 *4)DB서버로 부터 결과 수신 
		 */
	}

}

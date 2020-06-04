
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		if (id.equals("java") && passwd.equals("java")) {
			HttpSession session = request.getSession();
			
			// 세션의 속성중 id를 저장한다
			session.setAttribute("id", id);
			
			// RequestDispatcher
			// 현재 request에 담긴 정보를 저장하고 있다가
			// 설정된 forward의
			// 그 다음 페이지, 그 다음 페이지에도 해당 정보를 볼수있게 계속 저장하는 기능입니다
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("loginSuccess.jsp");
			
			// forward를 하면 dispatcher에 저장된 url(위의 loginSuccess.jsp)로 이동한다
			// 이동하면서 request, response도 같이 넘겨받는다
			// A -> B로 넘어가면서 받은 request, response를
			// B -> C로 넘어갈때도 동일하게 유지하고 싶으면 dispatcher forward를 한다
			dispatcher.forward(request, response);			
		} else {
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다')");
			out.println("history.back()");
			out.println("</script>");
		}
		out.println("아이디(post)=" + id + "<br>");
		out.println("비밀번호(post)=" + passwd + "<br>");
	}

}

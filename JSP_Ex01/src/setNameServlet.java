

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class setNameServlet
 */
@WebServlet("/setName")
public class setNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public setNameServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// session은 클라이언트가 서버에 접속할때 자동으로 생성된다
		// session : 클라이언트와 서버의 연결관을 관리하기 위한 것
		HttpSession session = request.getSession();
		
		// session에 name이라는 속성에 '오정원'을 추가한다
		session.setAttribute("name", "오정원");
		
		// response의 타입을 정한다
		response.setContentType("text/html;charset=utf-8");
		
		// 클라이언트에 출력하기 위한 out
		PrintWriter out = response.getWriter();
		
		// 출력
		out.println("<h1>이름저장</h1>");
	}

}

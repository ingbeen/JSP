

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChoiceDogServlet
 */
@WebServlet("/choiceDog")
public class ChoiceDogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChoiceDogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// 한글에 대한 오류가 안나기 하기 위한 메소드
	request.setCharacterEncoding("utf-8");
	
	// 클라이언트에 출력하기 위한 out
	PrintWriter out = response.getWriter();
	
	// 클라이언트에게 받은 객체 저장
	String[] dog = request.getParameterValues("dog");
	out.println("<html>");
	out.println("<head>");
	out.println("</head>");
	out.println("<body bgcolor='black'>");
	out.println("<table align='center' bgcolor='yellow'>");
	out.println("<tr>");
	for(int i = 0; i < dog.length; i++) {
		out.println("<td>");
		out.println("<img src='" + dog[i] + "'>");
		out.println("</td>");
	}
	out.println("</tr>");
	out.println("</table>");
	out.println("</body>");
	out.println("</html>");
}

}

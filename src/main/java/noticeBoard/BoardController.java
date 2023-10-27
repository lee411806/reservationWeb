package noticeBoard;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/*")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BoardService boardService;
	ArticleVO articleVO;

	@Override
	public void init() throws ServletException {
		// 서블릿 초기화시 BoardService(); 객체를 생성합니다.
		boardService = new BoardService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);

	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nextPage = "";
		// 요청받은 것을 utf 8 로 받아들이겠다. 이건 filtering으로 적용해줘도 됨
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String action = request.getPathInfo();
		// getPathInfo는 /board/* 이 곳에서 /* 쪽 경로를 알려준다.
		// request.getPathInfo()는 요청된 URL에서 context-path와 servlet-path를 제외한 나머지 부분,
		//	즉 path-info 부분을 반환합니다. 
		System.out.println("action : " + action);
		
		try {
			List<ArticleVO> articlesList = new ArrayList<ArticleVO>();
			
			if(action == null) {
				articlesList = boardService.listArticles();
				request.setAttribute("articleList", articlesList);
				nextPage = "/noticeBoard.jsp";
				
				
			}else if(action.equals("/listArticles.do")) {
				articlesList = boardService.listArticles();
				request.setAttribute("articlesList", articlesList);
				nextPage = "/noticeBoard.jsp";
			}else {
				nextPage = "/noticeBoard.jsp";
			}
			
			
			RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
			dispatch.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}

	}

}

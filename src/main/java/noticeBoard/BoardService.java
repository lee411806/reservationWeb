package noticeBoard;

import java.util.List;

public class BoardService {
		
	BoardDAO boardDAO;

	public BoardService(BoardDAO boardDAO) {

		boardDAO = new BoardDAO();
	}
	
	
	public BoardService() {
	}


	public List<ArticleVO> listArticles(){
		
		List<ArticleVO> articlesList = boardDAO.selectAllArticles();
//		List<ArticleVO> articlesList = null;
		return articlesList;
	}
	
	
	
}

package noticeBoard;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import noticeBoard.ArticleVO;

public class BoardDAO {

	
		//데이터베이스 커넥션 풀링을 위한 DataSource 객체를 선언합니다.
		
		private DataSource dataFactory;
		//데이터베이스와의 연결을 나타내는 Connection 객체를 선언합니다.
		//이 객체를 사용하여 데이터베이스와 통신합니다.
		Connection conn;
		//데이터베이스에 전달할 SQL 쿼리를 준비하고 실행하기 위한
		//PreparedStatement 객체를 선언
		PreparedStatement pstmt;
	
		public BoardDAO() {
			
			try {
				Context ctx = new InitialContext();
				Context envContext = (Context) ctx.lookup("java:/comp/env");
				dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
			//이 코드는 Java 웹 애플리케이션에서 데이터베이스와의 연결을 설정하고 
				//데이터베이스 리소스를 JNDI를 통해 액세스하기 위한 일반적인 절차 중 일부를 나타냅니다.
				//이려한 방식으로 데이터베이스 연결을 설정하면 
				//애플리케이션의 환경 설정을 변경하지 않고 데이터베이스 연결을 관리할 수 있습니다.
						
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
	
		
		
		public List selectAllArticles() {
			List articlesList = new ArrayList();
			try {
				conn = dataFactory.getConnection();
				System.out.println("드라이버 연결");
				String query = "SELECT LEVEL,articleNO,parentNO,title,content,id,writeDate" 
				             + " from t_board"
						     + " START WITH  parentNO=0" + " CONNECT BY PRIOR articleNO=parentNO"
						     + " ORDER SIBLINGS BY articleNO DESC";
				System.out.println(query);
				pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					int level = rs.getInt("level");
					int articleNO = rs.getInt("articleNO");
					int parentNO = rs.getInt("parentNO");
					String title = rs.getString("title");
					String content = rs.getString("content");
					String id = rs.getString("id");
					Date writeDate = rs.getDate("writeDate");
					ArticleVO article = new ArticleVO();
					article.setLevel(level);
					article.setArticleNO(articleNO);
					article.setParentNO(parentNO);
					article.setTitle(title);
					article.setContent(content);
					article.setId(id);
					article.setWriteDate(writeDate);
					articlesList.add(article);
				}
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return articlesList;
		}
	
	
}

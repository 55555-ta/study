package Osns;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Osns")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   private ServletContext ctx;
   //웹 리소스 기본 경로 지정
   private final String BASE_DIR = "/Osns/v2/";
   private final String START_PAGE = "snsLogin.jsp";
   
   // 데이터 서비스 인터페이스
   IService service;
   
   
   @Override
public void init() throws ServletException {
	// 데이터 서비스 선택 지정
	   ctx = getServletContext();
	   service = new ListService(ctx);
	
	   
}


public Controller() {
        super();
       
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    processRequest(request,response);
	}


	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// 한글 인코딩 설정
		request.setCharacterEncoding("utf-8");
		
		//서블릿 컨텍스트경로
		String ctxPath = request.getContextPath();
		String action = request.getParameter("action");
		
		// action 파라미터 없이 접근한 경우 세션을 초기화 하고 로그인 화면으로 이동
		if(action == null) {
			request.getSession().invalidate();
			response.sendRedirect(ctxPath+BASE_DIR+START_PAGE);
			// 로그인 화면으로 리디렉션후 현재 메서드를 종료해야함
			return;
		}
		Method m;
		String view = null;
		
		try {
			//현재 클래스에서 action 이름과 HttpServletRequest 를 파라미터로 하는 메서드 찾음
			m = this.getClass().getMethod(action, HttpServletRequest.class);
			// 메서드 실행후 리턴값 받아옴
			view = (String)m.invoke(this, request);
		} catch (NoSuchMethodException e) {
			// 에러 로그를 남기고 view 를 로그인 화면으로 지정, 앞에서와 같이 redirection 사용도 가능
			ctx.log("요청 action 없음");
			request.setAttribute("error", "정상적인 요청이 아닙니다. 다시 로그인 하세요");
			view = START_PAGE;
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 지정된 뷰로 포워딩, 포워딩시 컨텍스트 경로는 필요없음.
		RequestDispatcher dispatcher = request.getRequestDispatcher(BASE_DIR+view);
		dispatcher.forward(request, response);
		
	}

	
}

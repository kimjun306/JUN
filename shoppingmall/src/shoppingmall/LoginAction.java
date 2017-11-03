package shoppingmall;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginAction
 */
@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Do loginAction");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post loginAction");
		HttpSession session = request.getSession(true);
		String code = null;
		
		String id = request.getParameter("user").trim();
		String pw = request.getParameter("password").trim();
		System.out.println("id :" + id + ", pw :" + pw);
		
		ShopDAO shopDao = new ShopDAO();
		ShopDTO shopDto = shopDao.ckLogin(id, pw);
		
		
		if(shopDto != null){
		/*	System.out.println(shopDto.getShopid()+ ", ");
			System.out.println(shopDto.getShoppw()+ ", ");
			System.out.println(shopDto.getShopname()+ ", ");
			System.out.println(shopDto.getShopaddr()+ ", ");
			System.out.println(shopDto.getShopphone()+ ", ");
			System.out.println(shopDto.getShopemail()+ ", ");
	*/
	
		
	
			//세션 초기화(혹시모를 앞의 남아있는 값 제거)
			session.removeAttribute("shopid");		
			session.setAttribute("loginUser", shopDto);			//세션이름
			
			/*String uri = request.getParameter("uri");
			System.out.println("uri: " + uri);	
			RequestDispatcher dis = request.getRequestDispatcher(uri);
			dis.forward(request, response);*/
			
			code = "ShoppingIndex";
			
		
			
					
		}else{
		
			code = "login.jsp";
			request.setAttribute("code", "2");
		}
		
	
		RequestDispatcher dis = request.getRequestDispatcher(code);
		dis.forward(request, response);
		
		
		
		
		
		
	}

}

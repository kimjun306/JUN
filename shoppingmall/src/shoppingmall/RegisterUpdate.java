package shoppingmall;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class RegisterUpdate
 */
@WebServlet("/RegisterUpdate")
public class RegisterUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet Update!!");
	
		HttpSession session = request.getSession(true);
		
		

		if(session.getAttribute("loginUser") == null ){
			response.sendRedirect("login.jsp");
		}else{
		
			response.sendRedirect("registerUpdate.jsp");
		
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; , charset=UTF-8");
		
		String shopid = request.getParameter("name_id");
		String shoppw = request.getParameter("name_pw");
		String shopname = request.getParameter("name_name");
		String shopzip = request.getParameter("name_zip");
		String shopaddr = request.getParameter("name_addr");
		String shopaddr1 = request.getParameter("name_addr1");
		String shopphone = request.getParameter("name_phone");
		String shopemail = request.getParameter("name_email");
		
		
		
		ShopDAO shopDao = new ShopDAO();
		ShopDTO shopDto = new ShopDTO(shopid, shoppw, shopname, shopzip, shopaddr, shopaddr1, shopphone, shopemail);
		shopDao.shopUpdate(shopDto);
		
		HttpSession session = request.getSession(true);
		
		session.setAttribute("loginUser", shopDto);	 //세션 이름
		
		response.sendRedirect("ShoppingIndex");
	}

}

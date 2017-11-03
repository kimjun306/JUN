package shoppingmall;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * Servlet implementation class idckAction
 */
@WebServlet("/IdckAction")
public class IdckAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdckAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int result = 0;
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		String ckid = request.getParameter("ckid");
		System.out.println("ID값 = " +ckid);
		ShopDAO shopDao = new ShopDAO();
		result = shopDao.idSearch(ckid);
		
		System.out.println(result);
		
		if(result == 1) {
			System.out.println("값이 있습니다. 사용불가아이디");
		}else {
			System.out.println("값이 없습니다. 사용가능아이디");
		}
		
		request.setAttribute("idCount", result);
		request.setAttribute("message", ckid);
		
		RequestDispatcher dis = request.getRequestDispatcher("idck.jsp");
		dis.forward(request, response);
		
		
		System.out.println("Do get idckAction");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("DoPost idckAction");
	}

}

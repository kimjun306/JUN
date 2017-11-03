package shoppingmall;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertAction
 */
@WebServlet("/InsertAction")
public class InsertAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			System.out.println("Do get!! Insert Action ");
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; , charset=UTF-8" ); 
		
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
		shopDao.registerInsert(shopDto);
		
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("welcome.jsp");
		dis.forward(request, response);
		
		
		System.out.println("Do post!! Insert Action ");
	}

}

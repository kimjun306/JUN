package shoppingmall;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import dao.ProductDAO;
import dto.ProductDTO;



/**
 * Servlet implementation class ShoppingIndex
 */
@WebServlet("/ShoppingIndex")
public class ShoppingIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public ShoppingIndex() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Do get!!!");
	
		

		
		ProductDAO productDao = new ProductDAO();
		
		List<ProductDTO> newProductList = productDao.listNewProduct();
		List<ProductDTO> bestProductList = productDao.listBestProduct();
	
		request.setAttribute("newlist", newProductList);
		request.setAttribute("bestlist", bestProductList);
		
		RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
		dis.forward(request, response);
		
		System.out.println("===============");
		productDao.listBestProduct();
		productDao.listNewProduct();
	
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Do post!!");
		

		
		ProductDAO productDao = new ProductDAO();
		
		List<ProductDTO> newProductList = productDao.listNewProduct();
		List<ProductDTO> bestProductList = productDao.listBestProduct();
		
		request.setAttribute("newlist", newProductList);
		request.setAttribute("bestlist", bestProductList);
		
		RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
		dis.forward(request, response);
		
		System.out.println("===============");
		productDao.listBestProduct();
		productDao.listNewProduct();
	
	}

}

package dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dbmanager.DBManager;
import dto.ProductDTO;


public class ProductDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	List<ProductDTO> newlist = new ArrayList<>();
	List<ProductDTO> bestlist = new ArrayList<>();
	
		

	
	public List<ProductDTO> listNewProduct(){
	
		try {
			
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM NEW_PRO_VIEW " ;
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			newlist.clear();
			
			while(rs.next()){
				String p_code = rs.getString("p_code");
				String p_name = rs.getString("p_name");
				int p_price2 = rs.getInt("p_price2");
				String p_img = rs.getString("p_img");
				
				ProductDTO productDto = new ProductDTO(p_code, p_name, p_price2, p_img);
				
				newlist.add(productDto);
				
				/*for(int i = 0; i<newlist.size(); i++){
					System.out.println(newlist.get(i).getP_code());
					System.out.println(newlist.get(i).getP_name());
					System.out.println(newlist.get(i).getP_price2());
					System.out.println(newlist.get(i).getP_img());
				}*/
			}
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newlist;
		
		
	} 
	
	

	public List<ProductDTO> listBestProduct(){
	
		
			
			try {
				
				conn = DBManager.getConnection();
				String sql = "SELECT * FROM BEST_PRO_VIEW " ;
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				bestlist.clear();
			
				while(rs.next()){
					String p_code = rs.getString("p_code");
					String p_name = rs.getString("p_name");
					int p_price2 = rs.getInt("p_price2");
					String p_img = rs.getString("p_img");
					
					ProductDTO productDto = new ProductDTO(p_code, p_name, p_price2, p_img);
					
					bestlist.add(productDto);
					
					/*for(int i = 0; i<bestlist.size(); i++){
						System.out.println(bestlist.get(i).getP_code());
						System.out.println(bestlist.get(i).getP_name());
						System.out.println(bestlist.get(i).getP_price2());
						System.out.println(bestlist.get(i).getP_img());
					}*/
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return bestlist;
			
			
		} 
	
}

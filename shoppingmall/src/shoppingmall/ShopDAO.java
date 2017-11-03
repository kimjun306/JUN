package shoppingmall;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class ShopDAO {

	List<ShopDTO> shoplist = new ArrayList<>();
	List<ShopDTO> updatelist = new ArrayList<>();
	ShopDTO shopDto;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result  = 0;

	// 아이디 하나로 검색하는 메소드
	public List<ShopDTO> shopSearchOne(String shopid) {

		try {
			conn = DBManager.getConnection();

			String sql = "SELECT * FROM shopmember WHERE shopid = ? ";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, shopid);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				shopid = rs.getString("shopid");
				String shoppw = rs.getString("shoppw");
				String shopname = rs.getString("shopname");
				String shopaddr = rs.getString("shopaddr");
				String shopphone = rs.getString("shopphone");
				String shopemail = rs.getString("shopemail");
				Date regdate = rs.getDate("regdate");

				ShopDTO shopDto = new ShopDTO(shopid, shoppw, shopname, shopaddr, shopphone, shopemail, regdate);
				shoplist.add(shopDto);

			}

			for (int i = 0; i < shoplist.size(); i++) {
				System.out.println(shoplist.get(i).getShopid());
				System.out.println(shoplist.get(i).getShoppw());
				System.out.println(shoplist.get(i).getShopname());
				System.out.println(shoplist.get(i).getShopaddr());
				System.out.println(shoplist.get(i).getShopphone());
				System.out.println(shoplist.get(i).getShopemail());
				System.out.println(shoplist.get(i).getRegdate());

			}

		} catch (Exception e) {

			e.printStackTrace();

		}
		return shoplist;

	}
	
	//회원수정 메소드
	public void shopUpdate(ShopDTO shopDto) {

		try {

			conn = DBManager.getConnection();

			// sql 문 작성
			String sql = "UPDATE shopmember "
					+ "SET shoppw = ? , shopname = ? , shopzip = ? , shopaddr = ? , shopaddr1 = ?, shopphone = ? , shopemail = ? "
					+ "WHERE shopid = ?  ";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, shopDto.getShoppw());
			pstmt.setString(2, shopDto.getShopname());
			pstmt.setString(3, shopDto.getShopzip());
			pstmt.setString(4, shopDto.getShopaddr());
			pstmt.setString(5, shopDto.getShopaddr1());
			pstmt.setString(6, shopDto.getShopphone());
			pstmt.setString(7, shopDto.getShopemail());
			pstmt.setString(8, shopDto.getShopid());
			

			int result = pstmt.executeUpdate();

			if (result > 0) {
				System.out.println("수정되었습니다.");
			} else {
				System.out.println("수정되지 않았습니다.");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}

	}
	
	//아이디와 비밀번호로 회원정보 호출하는 메소드.
	public ShopDTO ckLogin(String shopid, String shoppw) {
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM shopmember "
					+ "WHERE shopid = ? AND shoppw = ? ";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, shopid);
			pstmt.setString(2, shoppw);
			

			rs = pstmt.executeQuery();
			  
			
			while (rs.next()) {
				shopid = rs.getString("shopid");
				shoppw = rs.getString("shoppw");
				String shopname = rs.getString("shopname");
				String shopzip = rs.getString("shopzip");
				String shopaddr = rs.getString("shopaddr");
				String shopaddr1 = rs.getString("shopaddr1");
				String shopphone = rs.getString("shopphone");
				String shopemail = rs.getString("shopemail");
				Date regdate = rs.getDate("regdate");
								
				
				shopDto = new ShopDTO(shopid, shoppw, shopname, shopzip, shopaddr, shopaddr1, shopphone, shopemail, regdate);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
	
		}return shopDto;
	}
	
	
	//회원가입 메소드 insert into.
	
	public int registerInsert(ShopDTO shopDto){
		
		try {
			
			conn = DBManager.getConnection();
			
			//sql문 작성
			
			String sql = "INSERT INTO SHOPMEMBER (shopid , shoppw , shopname , shopzip, shopaddr , shopaddr1, shopphone, shopemail) "
					+ "values (? ,? ,?  ,? , ? , ? , ? , ?) ";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, shopDto.getShopid());
			pstmt.setString(2, shopDto.getShoppw());
			pstmt.setString(3, shopDto.getShopname());
			pstmt.setString(4, shopDto.getShopzip());
			pstmt.setString(5, shopDto.getShopaddr());
			pstmt.setString(6, shopDto.getShopaddr1());
			pstmt.setString(7, shopDto.getShopphone());
			pstmt.setString(8, shopDto.getShopemail());
			
			
			result = pstmt.executeUpdate();
			
			if(result > 0) {
				System.out.println("입력되었습니다.");
			}else{
				System.out.println("입력되지 않았습니다.");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
	
	//회원탈퇴
	public int memberOut(String shopid){
		
		try {
			
			conn = DBManager.getConnection();
			
			String sql = "DELETE FROM shopmember "
					+ "WHERE ID = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, shopid);
			
			result = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	//아이디중복체크 메소드
	
	public int idSearch(String id){
		
			int result = 0;
		
		try {
			
			conn = DBManager.getConnection();
			
			String sql = "SELECT * FROM shopmember where shopid = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
		
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				
				result = 1;
			}

			
		} catch (Exception e) {
			
		} finally{
			DBManager.close(conn, pstmt, rs);
		}
		
		return result;
		
	}
	
}

package shoppingmall;

import java.sql.Date;

public class ShopDTO {

	
	
    
   private String shopid ;
   private String shoppw ;
   private String shopname ;
   private String shopzip;
   private String shopaddr ;
   private String shopaddr1 ;
   private String shopphone ;
   private String shopemail ;
   private Date regdate ;

   
   public ShopDTO(){
	   
   };
   
   
   public ShopDTO(String shopid, String shoppw) {
	super();
	this.shopid = shopid;
	this.shoppw = shoppw;
}


public ShopDTO(String shopid, String shoppw, String shopname, String shopzip, String shopaddr, String shopaddr1,
		String shopphone, String shopemail, Date regdate) {
	super();
	this.shopid = shopid;
	this.shoppw = shoppw;
	this.shopname = shopname;
	this.shopzip = shopzip;
	this.shopaddr = shopaddr;
	this.shopaddr1 = shopaddr1;
	this.shopphone = shopphone;
	this.shopemail = shopemail;
	this.regdate = regdate;
}


public ShopDTO(String shopid, String shoppw, String shopname, String shopzip, String shopaddr, String shopaddr1,
		String shopphone, String shopemail) {
	super();
	this.shopid = shopid;
	this.shoppw = shoppw;
	this.shopname = shopname;
	this.shopzip = shopzip;
	this.shopaddr = shopaddr;
	this.shopaddr1 = shopaddr1;
	this.shopphone = shopphone;
	this.shopemail = shopemail;
}


public ShopDTO(String shopid, String shoppw, String shopname, String shopaddr, String shopphone, String shopemail,
		Date regdate) {
	super();
	this.shopid = shopid;
	this.shoppw = shoppw;
	this.shopname = shopname;
	this.shopaddr = shopaddr;
	this.shopphone = shopphone;
	this.shopemail = shopemail;
	this.regdate = regdate;
}

   

public ShopDTO(String shopid, String shoppw, String shopname, String shopaddr, String shopphone, String shopemail) {
	super();
	this.shopid = shopid;
	this.shoppw = shoppw;
	this.shopname = shopname;
	this.shopaddr = shopaddr;
	this.shopphone = shopphone;
	this.shopemail = shopemail;
}



public ShopDTO(String shopid, String shoppw, String shopname, String shopaddr, String shopphone) {
	super();
	this.shopid = shopid;
	this.shoppw = shoppw;
	this.shopname = shopname;
	this.shopaddr = shopaddr;
	this.shopphone = shopphone;
}




public String getShopzip() {
	return shopzip;
}


public void setShopzip(String shopzip) {
	this.shopzip = shopzip;
}


public String getShopaddr1() {
	return shopaddr1;
}


public void setShopaddr1(String shopaddr1) {
	this.shopaddr1 = shopaddr1;
}


public String getShopid() {
	return shopid;
}


public void setShopid(String shopid) {
	this.shopid = shopid;
}


public String getShoppw() {
	return shoppw;
}


public void setShoppw(String shoppw) {
	this.shoppw = shoppw;
}


public String getShopname() {
	return shopname;
}


public void setShopname(String shopname) {
	this.shopname = shopname;
}


public String getShopaddr() {
	return shopaddr;
}


public void setShopaddr(String shopaddr) {
	this.shopaddr = shopaddr;
}


public String getShopphone() {
	return shopphone;
}


public void setShopphone(String shopphone) {
	this.shopphone = shopphone;
}


public String getShopemail() {
	return shopemail;
}


public void setShopemail(String shopemail) {
	this.shopemail = shopemail;
}


public Date getRegdate() {
	return regdate;
}


public void setRegdate(Date regdate) {
	this.regdate = regdate;
}
   
   
   
   
}

package com.BoB.mvc.owner.model.dto;

public class MenuListDTO implements java.io.Serializable{

	private String menuCode;
	private String menuName;
	private int price;
	private String menuExplain;
	private String salesYN;
	private int picCode;
	private int stoCode;
	private PictureDTO pictureCode;
	private StoreInfoDTO storeCode;
//	private int pictureCode;
//	private int storeCode;
	
	public MenuListDTO() {
		super();
	}


	public MenuListDTO(String menuCode, String menuName, int price, String menuExplain, String salesYN, int picCode,
			int stoCode, PictureDTO pictureCode, StoreInfoDTO storeCode) {

//		public MenuListDTO(String menuCode, String menuName, int price, String menuExplain, String salesYN, int pictureCode,
//			int storeCode) {
		super();
		this.menuCode = menuCode;
		this.menuName = menuName;
		this.price = price;
		this.menuExplain = menuExplain;
		this.salesYN = salesYN;
		this.picCode = picCode;
		this.stoCode = stoCode;
//		this.pictureCode = pictureCode;
//		this.storeCode = storeCode;
	}
		
		
	public String getMenuCode() {
		return menuCode;
	}
	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMenuExplain() {
		return menuExplain;
	}
	public void setMenuExplain(String menuExplain) {
		this.menuExplain = menuExplain;
	}
	public String getSalesYN() {
		return salesYN;
	}
	public void setSalesYN(String salesYN) {
		this.salesYN = salesYN;
	}

	public int getPicCode() {
		return picCode;
	}

	public void setPicCode(int picCode) {
		this.picCode = picCode;
	}

	public int getStoCode() {
		return stoCode;
	}

	public void setStoCode(int stoCode) {
		this.stoCode = stoCode;
	}

	public PictureDTO getPictureCode() {
//	public int getPictureCode() {
		return pictureCode;
	}

	public void setPictureCode(PictureDTO pictureCode) {
//	public void setPictureCode(int pictureCode) {
		this.pictureCode = pictureCode;
	}

	public StoreInfoDTO getStoreCode() {
//	public int getStoreCode() {
		return storeCode;
	}

	public void setStoreCode(StoreInfoDTO storeCode) {
//	public void setStoreCode(int storeCode) {
		this.storeCode = storeCode;
	}

	@Override
	public String toString() {
		return "MenuListDTO [menuCode=" + menuCode + ", menuName=" + menuName + ", price=" + price + ", menuExplain="
				+ menuExplain + ", salesYN=" + salesYN + ", picCode=" + picCode + ", stoCode=" + stoCode
				+ ", pictureCode=" + pictureCode + ", storeCode=" + storeCode + "]";
	}

	
}

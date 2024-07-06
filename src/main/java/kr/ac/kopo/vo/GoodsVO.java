package kr.ac.kopo.vo;

public class GoodsVO {
	
	private String userId;
	private String itemCode;
	private String itemName;
	private String brandCode;
	private String brandName;
	private String itemType;
	private int itemPrice;
	private int itemQuantity;
	private String itemAddr;
	private String itemDetail;
	private String itemStyle;
	private String itemMadefor;
	private String itemCleaning;
	private String itemSize;
	private int billingNumber;
	private String regDate;
	private int viewCnt;
	private int prevPage;
	private int lastPage;
	private String itemTag;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getBrandCode() {
		return brandCode;
	}
	public void setBrandCode(String brandCode) {
		this.brandCode = brandCode;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getItemType() {
		return itemType;
	}
	public void setItemType(String itemType) {
		this.itemType = itemType;
	}
	public int getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	public int getItemQuantity() {
		return itemQuantity;
	}
	public void setItemQuantity(int itemQuantity) {
		this.itemQuantity = itemQuantity;
	}
	public String getItemAddr() {
		return itemAddr;
	}
	public void setItemAddr(String itemAddr) {
		this.itemAddr = itemAddr;
	}
	public String getItemDetail() {
		return itemDetail;
	}
	public void setItemDetail(String itemDetail) {
		this.itemDetail = itemDetail;
	}
	public String getItemStyle() {
		return itemStyle;
	}
	public void setItemStyle(String itemStyle) {
		this.itemStyle = itemStyle;
	}
	public String getItemMadefor() {
		return itemMadefor;
	}
	public void setItemMadefor(String itemMadefor) {
		this.itemMadefor = itemMadefor;
	}
	public String getItemCleaning() {
		return itemCleaning;
	}
	public void setItemCleaning(String itemCleaning) {
		this.itemCleaning = itemCleaning;
	}
	public String getItemSize() {
		return itemSize;
	}
	public void setItemSize(String itemSize) {
		this.itemSize = itemSize;
	}
	public int getBillingNumber() {
		return billingNumber;
	}
	public void setBillingNumber(int billingNumber) {
		this.billingNumber = billingNumber;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	
	public int getPrevPage() {
		return prevPage;
	}
	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public String getItemTag() {
		return itemTag;
	}
	public void setItemTag(String itemTag) {
		this.itemTag = itemTag;
	}
	@Override
	public String toString() {
		return "GoodsVO [userId=" + userId + ", itemCode=" + itemCode + ", itemName=" + itemName + ", brandCode="
				+ brandCode + ", brandName=" + brandName + ", itemType=" + itemType + ", itemPrice=" + itemPrice
				+ ", itemQuantity=" + itemQuantity + ", itemAddr=" + itemAddr + ", itemDetail=" + itemDetail
				+ ", itemStyle=" + itemStyle + ", itemMadefor=" + itemMadefor + ", itemCleaning=" + itemCleaning
				+ ", itemSize=" + itemSize + ", billingNumber=" + billingNumber + ", regDate=" + regDate + ", viewCnt="
				+ viewCnt + ", prevPage=" + prevPage + ", lastPage=" + lastPage + ", itemTag=" + itemTag + "]";
	}
	
}

package petsshop;

public class Order {
	 private int id;
	 private String buyer_username;
	 private int buyer_num;
	 private String buyer_address;
	 private String state;
	 private int pet_id;
	 private int pet_num;


	public int getBuyer_num() {
		return buyer_num;
	}
	public void setBuyer_num(int buyer_num) {
		this.buyer_num = buyer_num;
	}

	public String getBuyer_address() {
		return buyer_address;
	}
	public void setBuyer_address(String buyer_address) {
		this.buyer_address = buyer_address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}


	public int getPet_num() {
		return pet_num;
	}
	public void setPet_num(int pet_num) {
		this.pet_num = pet_num;
	}
	public String getBuyer_username() {
		return buyer_username;
	}
	public void setBuyer_username(String buyer_username) {
		this.buyer_username = buyer_username;
	}
	public int getPet_id() {
		return pet_id;
	}
	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	 
}

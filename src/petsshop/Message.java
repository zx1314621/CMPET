package petsshop;

public class Message {
	 private String id;
	 private String buyer_username;
	 private String name;
	 private int buyer_num;
	 private String content;
	 private String pet_name;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	public int getBuyer_num() {
		return buyer_num;
	}
	public void setBuyer_num(int buyer_num) {
		this.buyer_num = buyer_num;
	}
	public String getBuyer_username() {
		return buyer_username;
	}
	public void setBuyer_username(String buyer_username) {
		this.buyer_username = buyer_username;
	}
}

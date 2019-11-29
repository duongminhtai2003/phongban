package bean;

public class PhongBan {
	private String id;
	private String name;
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
	public PhongBan(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public PhongBan() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "PhongBan [id=" + id + ", name=" + name + "]";
	}
	
}

package bean;

import java.sql.Date;

public class NhanVien {
	private String id;
	private String name;
	private String address;
	private String birthday;
	private PhongBan phongban;
	private String phonenumber;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public PhongBan getPhongban() {
		return phongban;
	}
	public void setPhongban(PhongBan phongban) {
		this.phongban = phongban;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public NhanVien(String id, String name, String address, String birthday, PhongBan phongban, String phonenumber) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.birthday = birthday;
		this.phongban = phongban;
		this.phonenumber = phonenumber;
	}
	public NhanVien() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "NhanVien [id=" + id + ", name=" + name + ", address=" + address + ", birthday=" + birthday
				+ ", phongban=" + phongban + ", phonenumber=" + phonenumber + "]";
	}

}

package websys2.bean;

import java.io.Serializable;

public class Users implements Serializable {

	private int users_id;
	private String users_name;
	private String users_nickname;;
	private String users_password;
	private int users_level;

	/* コンストラクタ */
	public Users() {

	}

	public int getUsers_id() {
		return users_id;
	}

	public void setUsers_id(int users_id) {
		this.users_id = users_id;
	}

	public String getUsers_name() {
		return users_name;
	}

	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}

	public String getUsers_nickname() {
		return users_nickname;
	}

	public void setUsers_nickname(String users_nickname) {
		this.users_nickname = users_nickname;
	}

	public String getUsers_password() {
		return users_password;
	}

	public void setUsers_password(String users_password) {
		this.users_password = users_password;
	}

	public int getUsers_level() {
		return users_level;
	}

	public void setUsers_level(int users_level) {
		this.users_level = users_level;
	}

}

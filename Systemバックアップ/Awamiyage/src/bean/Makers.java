package bean;

import java.io.Serializable;
import java.sql.Timestamp;

public class Makers implements Serializable {

	private int makers_id;
	private String makers_name;
	private String makers_address;
	private String makers_tel;
	private String makers_homepage;
	private String makers_netshop;
	private String shop_name;

	private Timestamp register_time;
	private String register_person;
	private Timestamp update_time;
	private String update_person;
	private Timestamp delete_time;
	private String delete_person;
	private boolean makers_show;


	/**
	 * コンストラクタ
	 */
	public Makers() {

	}


	public int getMakers_id() {
		return makers_id;
	}
	public void setMakers_id(int makers_id) {
		this.makers_id = makers_id;
	}

	public String getMakers_name() {
		return makers_name;
	}
	public void setMakers_name(String makers_name) {
		this.makers_name = makers_name;
	}

	public String getMakers_address() {
		return makers_address;
	}
	public void setMakers_address(String makers_address) {
		this.makers_address = makers_address;
	}

	public String getMakers_tel() {
		return makers_tel;
	}
	public void setMakers_tel(String makers_tel) {
		this.makers_tel = makers_tel;
	}

	public String getMakers_homepage() {
		return makers_homepage;
	}
	public void setMakers_homepage(String makers_homepage) {
		this.makers_homepage = makers_homepage;
	}

	public String getMakers_netshop() {
		return makers_netshop;
	}
	public void setMakers_netshop(String makers_netshop) {
		this.makers_netshop = makers_netshop;
	}

	public Timestamp getRegister_time() {
		return register_time;
	}
	public void setRegister_time(Timestamp register_time) {
		this.register_time = register_time;
	}

	public String getRegister_person() {
		return register_person;
	}
	public void setRegister_person(String register_person) {
		this.register_person = register_person;
	}

	public Timestamp getUpdate_time() {
		return update_time;
	}
	public void setUpdate_time(Timestamp update_time) {
		this.update_time = update_time;
	}

	public String getUpdate_person() {
		return update_person;
	}
	public void setUpdate_person(String update_person) {
		this.update_person = update_person;
	}

	public Timestamp getDelete_time() {
		return delete_time;
	}
	public void setDelete_time(Timestamp delete_time) {
		this.delete_time = delete_time;
	}

	public String getDelete_person() {
		return delete_person;
	}
	public void setDelete_person(String delete_person) {
		this.delete_person = delete_person;
	}

	public boolean isMakers_show() {
		return makers_show;
	}
	public void setMakers_show(boolean makers_show) {
		this.makers_show = makers_show;
	}


	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}

}

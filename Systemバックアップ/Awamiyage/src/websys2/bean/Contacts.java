package websys2.bean;

import java.io.Serializable;
import java.sql.Timestamp;

public class Contacts implements Serializable {

	private int contacts_id;
	private int contacts_type;
	private String contacts_title;
	private String contacts_content;
	private String contacts_name;
	private String contacts_mail;
	private String contacts_company;
	private Timestamp input_time;
	private boolean contacts_res;

	/* コンストラクタ */
	public Contacts() {

	}


	public int getContacts_id() {
		return contacts_id;
	}


	public void setContacts_id(int contacts_id) {
		this.contacts_id = contacts_id;
	}


	public int getContacts_type() {
		return contacts_type;
	}


	public void setContacts_type(int contacts_type) {
		this.contacts_type = contacts_type;
	}


	public String getContacts_title() {
		return contacts_title;
	}


	public void setContacts_title(String contacts_title) {
		this.contacts_title = contacts_title;
	}


	public String getContacts_content() {
		return contacts_content;
	}


	public void setContacts_content(String contacts_content) {
		this.contacts_content = contacts_content;
	}


	public String getContacts_name() {
		return contacts_name;
	}


	public void setContacts_name(String contacts_name) {
		this.contacts_name = contacts_name;
	}


	public String getContacts_mail() {
		return contacts_mail;
	}


	public void setContacts_mail(String contacts_mail) {
		this.contacts_mail = contacts_mail;
	}


	public String getContacts_company() {
		return contacts_company;
	}


	public void setContacts_company(String contacts_company) {
		this.contacts_company = contacts_company;
	}


	public Timestamp getInput_time() {
		return input_time;
	}


	public void setInput_time(Timestamp input_time) {
		this.input_time = input_time;
	}


	public boolean isContacts_res() {
		return contacts_res;
	}

	public void setContacts_res(boolean contacts_res) {
		this.contacts_res = contacts_res;
	}

}
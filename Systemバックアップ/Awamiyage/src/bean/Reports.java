package bean;

import java.io.Serializable;
import java.sql.Timestamp;

public class Reports implements Serializable {

	private int reports_id;
	private String reports_name;
	private int reports_type;
	private String reports_content1;
	private String reports_content2;
	private String reports_content3;
	private String reports_content4;
	private String reports_eyecatch;
	private String reports_photo2;
	private String reports_photo3;
	private String reports_heading1;
	private String reports_heading2;
	private String reports_heading3;
	private int products_id1;
	private int products_id2;
	private int products_id3;
	private int products_id4;
	private int products_id5;
	private int makers_id;
	private Timestamp register_time;
	private String register_person;
	private Timestamp update_time;
	private String update_person;
	private Timestamp delete_time;
	private String delete_person;
	private boolean reports_show;

	private String products_name1;
	private String products_name2;
	private String products_name3;
	private String products_name4;
	private String products_name5;

	private String makers_name1;
	private String makers_name2;
	private String makers_name3;
	private String makers_name4;
	private String makers_name5;

	private String makers_homepage;

	private String register_date;


	/* コンストラクタ */
	public Reports() {

	}


	public int getReports_id() {
		return reports_id;
	}


	public void setReports_id(int reports_id) {
		this.reports_id = reports_id;
	}


	public String getReports_name() {
		return reports_name;
	}


	public void setReports_name(String reports_name) {
		this.reports_name = reports_name;
	}


	public int getReports_type() {
		return reports_type;
	}


	public void setReports_type(int reports_type) {
		this.reports_type = reports_type;
	}


	public String getReports_content1() {
		return reports_content1;
	}


	public void setReports_content1(String reports_content1) {
		this.reports_content1 = reports_content1;
	}


	public String getReports_content2() {
		return reports_content2;
	}


	public void setReports_content2(String reports_content2) {
		this.reports_content2 = reports_content2;
	}


	public String getReports_content3() {
		return reports_content3;
	}


	public void setReports_content3(String reports_content3) {
		this.reports_content3 = reports_content3;
	}


	public String getReports_content4() {
		return reports_content4;
	}


	public void setReports_content4(String reports_content4) {
		this.reports_content4 = reports_content4;
	}


	public String getReports_eyecatch() {
		return reports_eyecatch;
	}


	public void setReports_eyecatch(String reports_eyecatch) {
		this.reports_eyecatch = reports_eyecatch;
	}


	public String getReports_photo2() {
		return reports_photo2;
	}


	public void setReports_photo2(String reports_photo2) {
		this.reports_photo2 = reports_photo2;
	}


	public String getReports_photo3() {
		return reports_photo3;
	}


	public void setReports_photo3(String reports_photo3) {
		this.reports_photo3 = reports_photo3;
	}


	public String getReports_heading1() {
		return reports_heading1;
	}


	public void setReports_heading1(String reports_heading1) {
		this.reports_heading1 = reports_heading1;
	}


	public String getReports_heading2() {
		return reports_heading2;
	}


	public void setReports_heading2(String reports_heading2) {
		this.reports_heading2 = reports_heading2;
	}


	public String getReports_heading3() {
		return reports_heading3;
	}


	public void setReports_heading3(String reports_heading3) {
		this.reports_heading3 = reports_heading3;
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


	public boolean isReports_show() {
		return reports_show;
	}


	public void setReports_show(boolean reports_show) {
		this.reports_show = reports_show;
	}


	public int getProducts_id1() {
		return products_id1;
	}


	public void setProducts_id1(int products_id1) {
		this.products_id1 = products_id1;
	}


	public int getProducts_id2() {
		return products_id2;
	}


	public void setProducts_id2(int products_id2) {
		this.products_id2 = products_id2;
	}


	public int getProducts_id3() {
		return products_id3;
	}


	public void setProducts_id3(int products_id3) {
		this.products_id3 = products_id3;
	}


	public int getProducts_id4() {
		return products_id4;
	}


	public void setProducts_id4(int products_id4) {
		this.products_id4 = products_id4;
	}


	public int getProducts_id5() {
		return products_id5;
	}


	public void setProducts_id5(int products_id5) {
		this.products_id5 = products_id5;
	}


	public int getMakers_id() {
		return makers_id;
	}


	public void setMakers_id(int makers_id) {
		this.makers_id = makers_id;
	}


	public String getProducts_name1() {
		return products_name1;
	}
	public void setProducts_name1(String products_name1) {
		this.products_name1 = products_name1;
	}


	public String getProducts_name2() {
		return products_name2;
	}
	public void setProducts_name2(String products_name2) {
		this.products_name2 = products_name2;
	}


	public String getProducts_name3() {
		return products_name3;
	}
	public void setProducts_name3(String products_name3) {
		this.products_name3 = products_name3;
	}


	public String getProducts_name4() {
		return products_name4;
	}
	public void setProducts_name4(String products_name4) {
		this.products_name4 = products_name4;
	}


	public String getProducts_name5() {
		return products_name5;
	}
	public void setProducts_name5(String products_name5) {
		this.products_name5 = products_name5;
	}


	public String getMakers_name1() {
		return makers_name1;
	}


	public void setMakers_name1(String makers_name1) {
		this.makers_name1 = makers_name1;
	}


	public String getMakers_name2() {
		return makers_name2;
	}


	public void setMakers_name2(String makers_name2) {
		this.makers_name2 = makers_name2;
	}


	public String getMakers_name3() {
		return makers_name3;
	}


	public void setMakers_name3(String makers_name3) {
		this.makers_name3 = makers_name3;
	}


	public String getMakers_name4() {
		return makers_name4;
	}


	public void setMakers_name4(String makers_name4) {
		this.makers_name4 = makers_name4;
	}


	public String getMakers_name5() {
		return makers_name5;
	}


	public void setMakers_name5(String makers_name5) {
		this.makers_name5 = makers_name5;
	}


	public String getRegister_date() {
		return register_date;
	}


	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}


	public String getMakers_homepage() {
		return makers_homepage;
	}


	public void setMakers_homepage(String makers_homepage) {
		this.makers_homepage = makers_homepage;
	}

}

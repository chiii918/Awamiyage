package websys2.bean;

import java.io.Serializable;

public class Categorys implements Serializable {

	//categorys データベース
	private int categorys_id;
	private String categorys_name;

	//subcategory データベース
	private int subcategorys_id;
	private String subcategorys_name;
	private int sub_categorys_id;	//サブカテゴリ内のカテゴリID

	//citys データベース
	private int citys_id;
	private String citys_name;

	/**
	 * コンストラクタ
	 */
	public Categorys() {

	}


	public int getCategorys_id() {
		return categorys_id;
	}
	public void setCategorys_id(int categorys_id) {
		this.categorys_id = categorys_id;
	}

	public String getCategorys_name() {
		return categorys_name;
	}
	public void setCategorys_name(String categorys_name) {
		this.categorys_name = categorys_name;
	}



	public int getSubcategorys_id() {
		return subcategorys_id;
	}
	public void setSubcategorys_id(int subcategorys_id) {
		this.subcategorys_id = subcategorys_id;
	}

	public String getSubcategorys_name() {
		return subcategorys_name;
	}
	public void setSubcategorys_name(String subcategorys_name) {
		this.subcategorys_name = subcategorys_name;
	}


	public int getCitys_id() {
		return citys_id;
	}
	public void setCitys_id(int citys_id) {
		this.citys_id = citys_id;
	}

	public String getCitys_name() {
		return citys_name;
	}
	public void setCitys_name(String citys_name) {
		this.citys_name = citys_name;
	}


	public int getSub_categorys_id() {
		return sub_categorys_id;
	}


	public void setSub_categorys_id(int sub_categorys_id) {
		this.sub_categorys_id = sub_categorys_id;
	}


}


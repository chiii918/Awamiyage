package websys2.bean;

import java.io.Serializable;
import java.sql.Timestamp;

public class Products implements Serializable {

	private int products_id;
	private String products_name;
	private String products_description;
	private String products_price;
	private int products_pricerange;
	private String products_quantity;
	private String products_quantityunit;
	private String products_materials;
	private String products_deadline;
	private int products_save;
	private String products_capacity;
	private String products_capacityunit;
	private int makers_id;
	private int categorys_id;
	private int subcategorys_id;
	private int citys_id;
	private int products_taste;
	private int products_scene;
	private float products_star;
	private String products_text;
	private String products_eyecatch;
	private String products_photo2;
	private String products_photo3;
	private boolean products_local;
	private boolean products_recommend;
	private Timestamp register_time;
	private String register_person;
	private Timestamp update_time;
	private String update_person;
	private Timestamp delete_time;
	private String delete_person;
	private boolean products_show;

	private String makers_name;
	private String makers_homepage;
	private String shop_name;
	private String makers_netshop;
	private String categorys_name;
	private String subcategorys_name;
	private String citys_name;


	/* コンストラクタ */
	public Products() {

	}


	public int getProducts_id() {
		return products_id;
	}
	public void setProducts_id(int products_id) {
		this.products_id = products_id;
	}


	public String getProducts_name() {
		return products_name;
	}
	public void setProducts_name(String products_name) {
		this.products_name = products_name;
	}


	public String getProducts_price() {
		return products_price;
	}
	public void setProducts_price(String products_price) {
		this.products_price = products_price;
	}


	public String getProducts_quantity() {
		return products_quantity;
	}
	public void setProducts_quantity(String products_quantity) {
		this.products_quantity = products_quantity;
	}


	public String getProducts_quantityunit() {
		return products_quantityunit;
	}
	public void setProducts_quantityunit(String products_quantityunit) {
		this.products_quantityunit = products_quantityunit;
	}


	public String getProducts_materials() {
		return products_materials;
	}
	public void setProducts_materials(String products_materials) {
		this.products_materials = products_materials;
	}


	public String getProducts_deadline() {
		return products_deadline;
	}
	public void setProducts_deadline(String products_deadline) {
		this.products_deadline = products_deadline;
	}


	public int getProducts_save() {
		return products_save;
	}
	public void setProducts_save(int products_save) {
		this.products_save = products_save;
	}


	public String getProducts_capacity() {
		return products_capacity;
	}
	public void setProducts_capacity(String products_capacity) {
		this.products_capacity = products_capacity;
	}


	public String getProducts_capacityunit() {
		return products_capacityunit;
	}
	public void setProducts_capacityunit(String products_capacityunit) {
		this.products_capacityunit = products_capacityunit;
	}


	public int getMakers_id() {
		return makers_id;
	}
	public void setMakers_id(int makers_id) {
		this.makers_id = makers_id;
	}


	public int getCategorys_id() {
		return categorys_id;
	}
	public void setCategorys_id(int categorys_id) {
		this.categorys_id = categorys_id;
	}


	public int getProducts_taste() {
		return products_taste;
	}
	public void setProducts_taste(int products_taste) {
		this.products_taste = products_taste;
	}


	public int getProducts_scene() {
		return products_scene;
	}
	public void setProducts_scene(int products_scene) {
		this.products_scene = products_scene;
	}


	public float getProducts_star() {
		return products_star;
	}
	public void setProducts_star(float products_star) {
		this.products_star = products_star;
	}


	public String getProducts_text() {
		return products_text;
	}
	public void setProducts_text(String products_text) {
		this.products_text = products_text;
	}


	public String getProducts_eyecatch() {
		return products_eyecatch;
	}
	public void setProducts_eyecatch(String products_eyecatch) {
		this.products_eyecatch = products_eyecatch;
	}


	public String getProducts_photo2() {
		return products_photo2;
	}
	public void setProducts_photo2(String products_photo2) {
		this.products_photo2 = products_photo2;
	}


	public String getProducts_photo3() {
		return products_photo3;
	}
	public void setProducts_photo3(String products_photo3) {
		this.products_photo3 = products_photo3;
	}


	public boolean isProducts_local() {
		return products_local;
	}
	public void setProducts_local(boolean products_local) {
		this.products_local = products_local;
	}


	public boolean isProducts_recommend() {
		return products_recommend;
	}
	public void setProducts_recommend(boolean products_recommend) {
		this.products_recommend = products_recommend;
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


	public boolean isProducts_show() {
		return products_show;
	}
	public void setProducts_show(boolean products_show) {
		this.products_show = products_show;
	}


	public String getMakers_name() {
		return makers_name;
	}
	public void setMakers_name(String makers_name) {
		this.makers_name = makers_name;
	}


	public String getCategorys_name() {
		return categorys_name;
	}
	public void setCategorys_name(String categorys_name) {
		this.categorys_name = categorys_name;
	}


	public String getSubcategorys_name() {
		return subcategorys_name;
	}
	public void setSubcategorys_name(String subcategorys_name) {
		this.subcategorys_name = subcategorys_name;
	}


	public int getSubcategorys_id() {
		return subcategorys_id;
	}
	public void setSubcategorys_id(int subcategorys_id) {
		this.subcategorys_id = subcategorys_id;
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


	public int getProducts_pricerange() {
		return products_pricerange;
	}


	public void setProducts_pricerange(int products_pricerange) {
		this.products_pricerange = products_pricerange;
	}


	public String getMakers_homepage() {
		return makers_homepage;
	}


	public void setMakers_homepage(String makers_homepage) {
		this.makers_homepage = makers_homepage;
	}


	public String getShop_name() {
		return shop_name;
	}


	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}


	public String getMakers_netshop() {
		return makers_netshop;
	}


	public void setMakers_netshop(String makers_netshop) {
		this.makers_netshop = makers_netshop;
	}


	public String getProducts_description() {
		return products_description;
	}


	public void setProducts_description(String products_description) {
		this.products_description = products_description;
	}



}

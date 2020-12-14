DROP TABLE products;

create table products (
	products_id 			serial not null primary key 
	,products_name			character varying(50) not null 
	,products_description	TEXT not null 
	,products_price 		character varying(100) not null
	,products_pricerange	int not null 
	,products_quantity		character varying(150) not null
	,products_quantityunit	character varying(20) not null
	,products_materials 	TEXT null
	,products_deadline 		character varying(50) null
	,products_save 			integer null
	,products_capacity 		character varying(100) null
	,products_capacityunit 	character varying(20) null
	,makers_id 				integer not null
	,categorys_id			integer not null
	,subcategorys_id		integer not null
	,citys_id				integer not null
	,products_taste			integer not null
	,products_scene			integer not null
	,products_star			real null
	,products_text			character varying(150) null
	,products_eyecatch		character varying(150) null
	,products_photo2		character varying(150) null
	,products_photo3		character varying(150) null
	,products_local			boolean not null
	,products_recommend		boolean not null
	,register_time 			timestamp not null
	,register_person 		character varying(20) not null
	,update_time 			timestamp null
	,update_person 			character varying(20) null
	,delete_time 			timestamp null
	,delete_person 			character varying(20) null
	,products_show 			boolean not null
);

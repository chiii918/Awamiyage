DROP TABLE makers;

create table makers (
	makers_id 			serial not null primary key
	,makers_name 		character varying(50) not null
	,makers_address 	character varying(150) not null
	,makers_tel 		character varying(20) not null
	,makers_homepage	character varying(100) null
	,makers_netshop 	character varying(100) null
	,shop_name 			character varying(50) NULL
	,register_time 		timestamp not null
	,register_person 	character varying(20) not null
	,update_time 		timestamp null
	,update_person 		character varying(20) null
	,delete_time 		timestamp null
	,delete_person 		character varying(20) null
	,makers_show 		boolean not null
);

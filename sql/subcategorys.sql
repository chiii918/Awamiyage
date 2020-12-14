DROP TABLE subcategorys;

create table subcategorys (
	subcategorys_id 		serial not null primary key
	,subcategorys_name 		character varying(50) not null
	,categorys_id			integer not null
	,register_time 			timestamp not null
	,register_person 		character varying(20) not null
	,update_time 			timestamp null
	,update_person 			character varying(20) null
	,subcategorys_show 		boolean not null
);

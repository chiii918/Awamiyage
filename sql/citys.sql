drop TABLE citys;

create table citys (
	citys_id 			serial not null primary key
	,citys_name 		character varying(50) not null
	,area_id 			int not null
	,register_time 		timestamp not null
	,register_person 	character varying(20) not null
	,update_time 		timestamp null
	,update_person 		character varying(20) null
	,citys_show 		boolean not null
);

DROP TABLE categorys;

create table categorys (
	categorys_id 		serial not null primary key 
	,categorys_name		character varying(50) not null 
	,register_time 		timestamp not null
	,register_person 	character varying(20) not null
	,update_time 		timestamp null
	,update_person 		character varying(20) null
	,categorys_show 	boolean not null
);

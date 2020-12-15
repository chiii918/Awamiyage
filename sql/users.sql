create table users (
	users_id 			serial not null primary key
	,users_name 		character varying(20) not null
	,users_nickname 	character varying(20) not null
	,users_password 	character varying(20) not null
	,users_level 		integer null
);


create table contacts (
	contacts_id 		serial not null primary key
	,contacts_type		integer not null
	,contacts_title		character varying(50) not null
	,contacts_content	text not null
	,contacts_name		character varying(20) not null
	,contacts_mail		character varying(50) not null
	,contacts_company	character varying(50) null
	,input_time 		timestamp not null
	,contacts_res 		BOOLEAN not null
);

insert into contacts
(
	contacts_id 		
	,contacts_type		
	,contacts_title		
	,contacts_content	
	,contacts_name		
	,contacts_mail		
	,contacts_company	
	,input_time 	
	,contacts_res 	
)
values
(
	1
	,1
	,'テキスト'
	,'テキストテキストテキスト'
	,'山田 太郎'
	,'qlip_tarou@gmai.co.jp'
	,null
	,'2020-11-30 15:10:30'
	,FALSE
);
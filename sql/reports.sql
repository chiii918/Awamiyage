create table reports (
	reports_id 			serial not null primary key
	,reports_name 		character varying(50) not null
	,reports_type		integer not null
	,reports_content1	text not null
	,reports_content2	text null
	,reports_content3	text null
	,reports_content4	text null
	,reports_eyecatch	character varying(200) null
	,reports_photo2		character varying(200) null
	,reports_photo3		character varying(200) null
	,reports_heading1	character varying(30) null
	,reports_heading2	character varying(30) null
	,reports_heading3	character varying(30) null
	,products_id1		integer null
	,products_id2		integer null
	,products_id3		integer null
	,products_id4		integer null
	,products_id5		integer null
	,makers_id			integer null
	,register_time 		timestamp not null
	,register_person 	character varying(20) not null
	,update_time 		timestamp null
	,update_person 		character varying(20) null
	,delete_time 		timestamp null
	,delete_person 		character varying(20) null
	,reports_show 		boolean not null
);

insert into reports
(
	reports_id 			
	,reports_name 		
	,reports_type		
	,reports_content1	
	,reports_content2	
	,reports_content3	
	,reports_content4	
	,reports_eyecatch	
	,reports_photo2		
	,reports_photo3		
	,reports_heading1	
	,reports_heading2	
	,reports_heading3	
	,products_id1		
	,products_id2		
	,products_id3		
	,products_id4		
	,products_id5	
	,makers_id		
	,register_time 		
	,register_person 	
	,update_time 		
	,update_person 		
	,delete_time 		
	,delete_person 		
	,reports_show 		
)
values
(
	1
	,'サンプルレビュー'
	,'1'
	,'内容1'
	,'内容2'
	,'内容3'
	,'内容4'
	,null
	,null
	,null
	,'小見出し1'
	,'小見出し2'
	,'小見出し3'
	,null
	,null
	,null
	,null
	,null
	,'2020-11-30 15:10:30'
	,'Admin'
	,null
	,null
	,null
	,null
	,TRUE
);

DROP VIEW reports_view;

CREATE VIEW reports_view AS SELECT
	reports.reports_id,
    reports.reports_name,
    reports.reports_type,
    reports.reports_content1,
    reports.reports_content2,
    reports.reports_content3,
    reports.reports_content4,
    reports.reports_eyecatch,
    reports.reports_photo2,
    reports.reports_photo3,
    reports.reports_heading1,
    reports.reports_heading2,
    reports.reports_heading3,
    reports.register_time, 
    reports.register_person, 
    reports.update_time, 
    reports.update_person, 
    reports.reports_show, 
    p1.products_id AS p1_id,
    p1.products_name AS p1_name,
    p1.products_eyecatch AS p1_eyecatch,
    p1.delete_time AS p1_delete_time,
    p1.delete_person AS p1_delete_parson,
    p1.products_show AS p1_show,
    p2.products_id AS p2_id,
    p2.products_name AS p2_name,
    p2.products_eyecatch AS p2_eyecatch,
    p2.delete_time AS p2_delete_time,
    p2.delete_person AS p2_delete_parson,
    p2.products_show AS p2_show,
    p3.products_id AS p3_id,
    p3.products_name AS p3_name,
    p3.makers_id AS p3_makers_id,
    p3.products_eyecatch AS p3_eyecatch,
    p3.delete_time AS p3_delete_time,
    p3.delete_person AS p3_delete_parson,
    p3.products_show AS p3_show,
    p4.products_id AS p4_id,
    p4.products_name AS p4_name,
    p4.products_eyecatch AS p4_eyecatch,
    p4.delete_time AS p4_delete_time,
    p4.delete_person AS p4_delete_parson,
    p4.products_show AS p4_show,
    p5.products_id AS p5_id,
    p5.products_name AS p5_name,
    p5.products_eyecatch AS p5_eyecatch,
    p5.delete_time AS p5_delete_time,
    p5.delete_person AS p5_delete_parson,
    p5.products_show AS p5_show,
    m1.makers_name AS m1_name,
    m1.shop_name AS m1_shop_name,
    m1.delete_time AS m1_delete_time,
    m1.delete_person AS m1_delete_person,
    m1.makers_show AS m1_show,
    
    m2.makers_name AS m2_name,
    m2.shop_name AS m2_shop_name,
    m2.delete_time AS m2_delete_time,
    m2.delete_person AS m2_delete_person,
    m2.makers_show AS m2_show,
    
    m3.makers_name AS m3_name,
    m3.shop_name AS m3_shop_name,
    m3.delete_time AS m3_delete_time,
    m3.delete_person AS m3_delete_person,
    m3.makers_show AS m3_show,
    
    m4.makers_name AS m4_name,
    m4.shop_name AS m4_shop_name,
    m4.delete_time AS m4_delete_time,
    m4.delete_person AS m4_delete_person,
    m4.makers_show AS m4_show,
    
    m5.makers_name AS m5_name,
    m5.shop_name AS m5_shop_name,
    m5.delete_time AS m5_delete_time,
    m5.delete_person AS m5_delete_person,
    m5.makers_show AS m5_show
FROM reports
LEFT JOIN products AS p1 ON reports.products_id1 = p1.products_id 
LEFT JOIN products AS p2 ON reports.products_id2 = p2.products_id 
LEFT JOIN products AS p3 ON reports.products_id3 = p3.products_id 
LEFT JOIN products AS p4 ON reports.products_id4 = p4.products_id 
LEFT JOIN products AS p5 ON reports.products_id5 = p5.products_id 
LEFT JOIN makers AS m1 ON p1.makers_id = m1.makers_id
LEFT JOIN makers AS m2 ON p2.makers_id = m2.makers_id
LEFT JOIN makers AS m3 ON p3.makers_id = m3.makers_id
LEFT JOIN makers AS m4 ON p4.makers_id = m4.makers_id
LEFT JOIN makers AS m5 ON p5.makers_id = m5.makers_id

WHERE reports.reports_type = 1 
OR reports.reports_type = 2 
AND reports.delete_time IS NULL AND reports.delete_person IS NULL 
ORDER BY register_time DESC;


-- -------------------------------------------------------------
-- TablePlus 3.11.0(352)
--
-- https://tableplus.com/
--
-- Database: postgres
-- Generation Time: 2020-12-18 09:37:13.3580
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "public"."categorys";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS categorys_categorys_id_seq;

-- Table Definition
CREATE TABLE "public"."categorys" (
    "categorys_id" int4 NOT NULL DEFAULT nextval('categorys_categorys_id_seq'::regclass),
    "categorys_name" varchar(50) NOT NULL,
    "register_time" timestamp NOT NULL,
    "register_person" varchar(20) NOT NULL,
    "update_time" timestamp,
    "update_person" varchar(20),
    "categorys_show" bool NOT NULL,
    PRIMARY KEY ("categorys_id")
);

INSERT INTO "public"."categorys" ("categorys_id", "categorys_name", "register_time", "register_person", "update_time", "update_person", "categorys_show") VALUES
('1', '酒', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('2', 'ソフトドリンク', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('3', '農産物', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('4', '海産物', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('5', 'お菓子', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('6', 'おかず', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('7', 'その他', '2020-12-07 12:00:00', 'Admin', NULL, '', 't');

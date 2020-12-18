-- -------------------------------------------------------------
-- TablePlus 3.11.0(352)
--
-- https://tableplus.com/
--
-- Database: postgres
-- Generation Time: 2020-12-18 09:38:36.9130
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "public"."subcategorys";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS subcategorys_subcategorys_id_seq;

-- Table Definition
CREATE TABLE "public"."subcategorys" (
    "subcategorys_id" int4 NOT NULL DEFAULT nextval('subcategorys_subcategorys_id_seq'::regclass),
    "subcategorys_name" varchar(50) NOT NULL,
    "categorys_id" int4 NOT NULL,
    "register_time" timestamp NOT NULL,
    "register_person" varchar(20) NOT NULL,
    "update_time" timestamp,
    "update_person" varchar(20),
    "subcategorys_show" bool NOT NULL,
    PRIMARY KEY ("subcategorys_id")
);

INSERT INTO "public"."subcategorys" ("subcategorys_id", "subcategorys_name", "categorys_id", "register_time", "register_person", "update_time", "update_person", "subcategorys_show") VALUES
('1', '果実酒', '1', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('2', '日本酒', '1', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('3', '焼酎', '1', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('4', 'その他', '1', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('5', 'お茶', '2', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('6', 'ジュース', '2', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('7', 'その他', '2', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('8', '穀物', '3', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('9', '果実', '3', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('10', '野菜', '3', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('11', 'その他', '3', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('12', '魚介類', '4', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('13', '海藻類', '4', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('14', 'その他', '4', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('16', '惣菜', '6', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('17', '調味料', '6', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('18', 'ごはんの友', '6', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('19', '麺類', '6', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('20', 'その他', '6', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('21', '和菓子', '5', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('22', '洋菓子', '5', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('23', 'その他', '5', '2020-12-07 12:00:00', 'Admin', NULL, '', 't'),
('24', '布製品', '7', '2020-12-07 12:00:00', 'Admin', NULL, '', 'f'),
('25', 'キャラクターグッズ', '7', '2020-12-07 12:00:00', 'Admin', NULL, '', 'f'),
('26', 'その他', '7', '2020-12-07 12:00:00', 'Admin', NULL, '', 't');

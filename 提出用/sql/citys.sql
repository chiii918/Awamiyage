-- -------------------------------------------------------------
-- TablePlus 3.11.0(352)
--
-- https://tableplus.com/
--
-- Database: postgres
-- Generation Time: 2020-12-16 13:56:59.6270
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS citys_citys_id_seq;

-- Table Definition
CREATE TABLE "public"."citys" (
    "citys_id" int4 NOT NULL DEFAULT nextval('citys_citys_id_seq'::regclass),
    "citys_name" varchar(50) NOT NULL,
    "area_id" int4 NOT NULL,
    "register_time" timestamp NOT NULL,
    "register_person" varchar(20) NOT NULL,
    "update_time" timestamp,
    "update_person" varchar(20),
    "citys_show" bool NOT NULL,
    PRIMARY KEY ("citys_id")
);

INSERT INTO "public"."citys" ("citys_id", "citys_name", "area_id", "register_time", "register_person", "update_time", "update_person", "citys_show") VALUES
('1', '徳島市', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('2', '鳴門市', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('3', '小松島市', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('4', '阿波市', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('5', '吉野川市', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('6', '松茂町', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('7', '北島町', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('8', '藍住町', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('9', '板野町', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('10', '上板町', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('11', '石井町', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('12', '神山町', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('13', '佐那河内村', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('14', '上勝町', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('15', '勝浦町', '1', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('16', '阿南市', '2', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('17', '那賀町', '2', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('18', '美波町', '2', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('19', '牟岐町', '2', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('20', '海陽町', '2', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('21', '三好市', '3', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('22', '美馬市', '3', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('23', '東みよし町', '3', '2020-12-06 15:40:00', 'Admin', NULL, '', 't'),
('24', 'つるぎ町', '3', '2020-12-06 15:40:00', 'Admin', NULL, '', 't');

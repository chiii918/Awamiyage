-- -------------------------------------------------------------
-- TablePlus 3.11.0(352)
--
-- https://tableplus.com/
--
-- Database: postgres
-- Generation Time: 2020-12-16 13:58:18.4480
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS users_users_id_seq;

-- Table Definition
CREATE TABLE "public"."users" (
    "users_id" int4 NOT NULL DEFAULT nextval('users_users_id_seq'::regclass),
    "users_name" varchar(20) NOT NULL,
    "users_nickname" varchar(20) NOT NULL,
    "users_password" varchar(20) NOT NULL,
    "users_level" int4,
    PRIMARY KEY ("users_id")
);

INSERT INTO "public"."users" ("users_id", "users_name", "users_nickname", "users_password", "users_level") VALUES
('1', 'awamiyage', 'awamiyage', 'awamiyage', NULL);

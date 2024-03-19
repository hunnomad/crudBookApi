/*
 Navicat Premium Data Transfer

 Source Server         : Telekom PSQL
 Source Server Type    : PostgreSQL
 Source Server Version : 150006 (150006)
 Source Host           : localhost:5432
 Source Catalog        : postgres
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150006 (150006)
 File Encoding         : 65001

 Date: 19/03/2024 16:45:39
*/


-- ----------------------------
-- Sequence structure for books_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."books_id_seq";
CREATE SEQUENCE "public"."books_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for failed_jobs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."failed_jobs_id_seq";
CREATE SEQUENCE "public"."failed_jobs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."migrations_id_seq";
CREATE SEQUENCE "public"."migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for personal_access_tokens_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."personal_access_tokens_id_seq";
CREATE SEQUENCE "public"."personal_access_tokens_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS "public"."books";
CREATE TABLE "public"."books" (
  "id" int8 NOT NULL DEFAULT nextval('books_id_seq'::regclass),
  "author" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "publish_date" timestamp(0) NOT NULL,
  "isbn" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "summary" text COLLATE "pg_catalog"."default",
  "price" int4,
  "on_store" int4,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO "public"."books" VALUES (1, 'Miss Velva Boyle II', 'Laudantium deleniti tempore autem autem quia et odit.', '2002-09-08 00:00:00', '4xnLS94Fzg', 'Dolore qui velit autem ut voluptatem. Perspiciatis et vel asperiores natus beatae fugiat est culpa. Sit provident et hic sunt.', 63, 9, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (2, 'Elda Goyette', 'Eos dolorum soluta cupiditate optio aut.', '2006-04-09 00:00:00', '8uTnC09u5o', 'Voluptatem rem consectetur qui et. Ab assumenda recusandae dolor illo vitae sint. Sint molestiae rerum voluptas deserunt et voluptatibus reiciendis.', 64, 10, '2024-02-21 11:54:48', '2024-02-22 16:56:04');
INSERT INTO "public"."books" VALUES (3, 'Prof. Leonel Dooley', 'Ut voluptatem fugit fugiat rerum odit.', '2017-08-24 00:00:00', 'qmkdZwtYdP', 'Incidunt et maxime optio libero voluptas vel qui. Iure voluptas provident quidem quisquam ea. Pariatur perferendis sunt ex mollitia id. Ratione necessitatibus cumque porro.', 29, 3, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (4, 'Miss Genoveva Greenholt III', 'Dolores cumque natus et sed.', '1973-07-12 00:00:00', 'zL3aZMabqq', 'Cupiditate laudantium eius voluptatem expedita. Voluptate consequatur repellat eos dolorum saepe similique voluptas. Placeat nihil omnis blanditiis quidem. Maxime quas minus impedit.', 76, 2, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (5, 'Eugenia Gerlach I', 'Reprehenderit alias at officiis.', '1979-02-20 00:00:00', 'utYkm01uZl', 'Ut a repellat provident exercitationem et in. Accusantium voluptate aliquam voluptatem qui neque rerum nostrum. Dolore repellendus unde voluptates consequatur.', 83, 5, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (6, 'Ms. Annabel Roberts', 'Eum eos saepe magnam quo explicabo quos.', '1985-01-27 00:00:00', 'qsRV4JE46J', 'Atque voluptatem et tempora quasi consequatur. Voluptatum et nam et soluta beatae ut. Ad debitis et laudantium laborum.', 93, 7, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (7, 'Franz Kilback', 'Enim aliquam ipsa ut tempora repellat minima dolorem.', '2022-07-11 00:00:00', 'nw6QXFmXSw', 'Cum eaque vel enim neque. Est sint nesciunt quia. Sint laudantium non dolorum ad enim debitis. Cupiditate nisi iusto non odit quia libero.', 52, 0, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (8, 'Ms. Hortense Yost', 'Est vero sit omnis corporis doloremque et.', '2020-01-15 00:00:00', 'IKv3fdbM9n', 'Quia quo molestias quis occaecati porro ut distinctio. Dolorem modi aperiam dolorem culpa sed. Ipsa dolorem facilis ut sapiente non quis ut et. Veniam aut unde esse distinctio molestiae inventore ut.', 99, 2, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (9, 'Wilfredo West', 'Qui est qui illo eligendi reiciendis rem quidem.', '2022-04-22 00:00:00', 'lY6gWJcLZG', 'Nihil odio natus expedita ut. Quae est minus error quas harum quaerat voluptas. Ratione animi doloremque rerum.', 78, 6, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (10, 'Florida Hermann', 'Delectus dolores voluptatem praesentium neque repellat ut.', '2009-06-11 00:00:00', 'FgewuNyrYo', 'Officia ratione culpa quia qui qui rerum. Dicta sapiente animi praesentium ullam eius vero ducimus. Ea esse omnis minima autem nihil quia.', 23, 8, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (11, 'Ms. Lexi Schuppe', 'Laudantium ut laboriosam aut dolorum sed.', '2012-05-04 00:00:00', '59winBdnez', 'Dolor velit odit voluptas qui aut modi. Consequatur voluptatem vero ratione magni repudiandae voluptates. Qui et excepturi non est qui dicta. Consequatur et sequi officia cum.', 91, 6, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (12, 'German Ondricka', 'Nisi ratione rem dolores non voluptatem.', '1993-08-27 00:00:00', 'b00bKQPP4C', 'Id iusto sunt soluta ut. Exercitationem unde labore debitis sed quia sint. Aut reiciendis iusto qui voluptas iste saepe ab. Corporis placeat quis sapiente porro eum ducimus aperiam voluptatem.', 7, 5, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (13, 'Mr. Jaron Mayer', 'Molestiae dignissimos molestiae dolores doloribus.', '1978-12-25 00:00:00', '0Pzwi1Ecnh', 'Debitis et magni ipsum expedita error iusto. Et ea doloribus vel quidem. Voluptatibus assumenda libero ratione sit aut.', 18, 3, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (14, 'Gussie Purdy', 'Ut non accusantium vel vitae in.', '2017-05-11 00:00:00', 'K8YR1byAMz', 'Quaerat alias rerum non enim vero dolores soluta. Delectus explicabo impedit delectus quis atque soluta placeat. Enim voluptas in laboriosam quis et explicabo nihil.', 2, 3, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (15, 'Lillian West', 'Accusantium expedita architecto itaque.', '2007-08-15 00:00:00', 'cRd8vY9Dea', 'Autem autem beatae ipsum. Corrupti eum dolor perspiciatis qui est ipsam. Maxime iste deleniti qui qui debitis delectus voluptatibus. Sit placeat enim eos atque qui.', 88, 5, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (16, 'Dr. Myriam Quigley V', 'Corrupti quidem quia explicabo quasi dolor rerum.', '2001-04-29 00:00:00', 'kGJUasL9HX', 'Asperiores quia aliquid deleniti adipisci sint id tempora eos. Earum sed sequi eaque perspiciatis odit doloribus. Et explicabo explicabo doloremque et sunt odio fuga.', 95, 3, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (17, 'Miss Juliet Ryan III', 'Quisquam enim quod dignissimos labore fugit repellat.', '1984-12-01 00:00:00', 'UUfd8YSKYu', 'Consequatur et ipsam voluptatibus consequatur ipsum molestiae. Odit autem blanditiis ex nulla tempora. Facere excepturi ea laborum ipsum dolores quo omnis.', 7, 8, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (18, 'Mrs. Loma Wuckert', 'Corporis culpa sed perferendis saepe qui quibusdam earum.', '1982-10-04 00:00:00', 'WQiR8Tv4YT', 'Ducimus autem reprehenderit ullam sit non vel. Tempore explicabo laboriosam et aut rem.', 94, 8, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (19, 'Earline Abshire', 'Eum impedit repellendus voluptatem adipisci odio.', '1981-06-28 00:00:00', 'En9R7JNjLz', 'Omnis accusantium quod nisi reprehenderit error. Nihil impedit qui quam aut et alias.', 1, 8, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (20, 'Mr. Mac Purdy PhD', 'Commodi velit quos dolorem qui cumque eum assumenda ducimus.', '1993-08-02 00:00:00', 'NYKCXIUHXk', 'Fugiat voluptatibus et accusamus veniam dolor consectetur. Consequatur at optio et veritatis placeat aut. Dolorem est eos ratione consequatur explicabo.', 72, 3, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (21, 'Armando Dooley DDS', 'Non harum et nihil minima optio.', '2008-08-04 00:00:00', 'CYi55IWRnq', 'Esse ut iste rem dolor soluta sint ea. Aliquam et voluptatem rem voluptate est explicabo. Ut excepturi eaque officia non omnis nulla laudantium.', 55, 1, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (22, 'Karlie Ritchie', 'Totam in voluptatum voluptatem inventore.', '2001-07-07 00:00:00', 'Bbn0h0kICB', 'Voluptas neque quos quos ut minus. Voluptates natus qui doloribus rerum blanditiis. Soluta et repudiandae voluptas id voluptatem ut. Optio sit distinctio quia consectetur id est porro.', 79, 6, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (23, 'Dr. Modesta Douglas', 'Non autem temporibus in corporis mollitia totam et quia.', '2016-08-06 00:00:00', '4BTbag8d34', 'Officiis totam rerum dolores qui. Necessitatibus odit id quaerat dolore molestiae. Magni illo iste impedit.', 12, 9, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (24, 'Madalyn Zulauf PhD', 'Ea esse modi cumque voluptatibus et molestiae.', '1998-11-29 00:00:00', 'e5dg87id3D', 'Repellendus dolores saepe perferendis et dicta repudiandae in ut. Pariatur et omnis molestiae aliquam nam sed. Culpa est rem qui asperiores tempore deleniti. Adipisci eaque dolores voluptas quisquam.', 13, 3, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (25, 'Kolby Satterfield', 'Aut iste veritatis veritatis blanditiis dolorum blanditiis illo.', '1980-07-19 00:00:00', 'spKwBU6ggb', 'Delectus distinctio ea nostrum eveniet culpa quis quis. Assumenda alias et sit quas tempore voluptatem. Inventore illum velit et dolorem.', 28, 4, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (26, 'Ruthie Harvey', 'Ut magni aut unde illum nulla.', '1974-05-12 00:00:00', 'hQ8MQ9ySVg', 'Id voluptatum molestias minima et quo quam laudantium. Natus voluptatem dignissimos eaque iste. Vero nulla ipsam voluptatum.', 53, 1, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (27, 'Cecelia Bode', 'Ut unde rerum in.', '1989-06-21 00:00:00', 'UFf3svgDnU', 'Fugiat sint quasi libero in placeat deserunt ut ullam. Reprehenderit voluptate qui provident. Explicabo in quis ab vel reprehenderit voluptatem. Eligendi deleniti aut assumenda quos et.', 86, 2, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (28, 'Fern Johns', 'Accusantium dolorem placeat impedit enim molestiae doloribus.', '1978-10-07 00:00:00', 'vt5GVr28E5', 'Nesciunt veniam unde cumque. Aut est minus architecto praesentium illum. Officiis quam et placeat quas quibusdam. Assumenda dignissimos illo consequatur et est repudiandae.', 91, 9, '2024-02-21 11:54:48', '2024-02-21 11:54:48');
INSERT INTO "public"."books" VALUES (29, 'Hulda Bednar', 'Omnis nobis consequatur architecto nihil.', '2004-05-31 00:00:00', 'CtKYb4qmUn', 'Ratione amet ea amet doloremque provident officiis vel. Fugiat est assumenda deleniti quo. Incidunt adipisci qui inventore omnis illum beatae officiis.', 76, 4, '2024-02-21 11:54:49', '2024-02-21 11:54:49');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS "public"."failed_jobs";
CREATE TABLE "public"."failed_jobs" (
  "id" int8 NOT NULL DEFAULT nextval('failed_jobs_id_seq'::regclass),
  "uuid" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "connection" text COLLATE "pg_catalog"."default" NOT NULL,
  "queue" text COLLATE "pg_catalog"."default" NOT NULL,
  "payload" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception" text COLLATE "pg_catalog"."default" NOT NULL,
  "failed_at" timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO "public"."migrations" VALUES (6, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "public"."migrations" VALUES (7, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO "public"."migrations" VALUES (9, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO "public"."migrations" VALUES (10, '2024_03_14_144702_create_books_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."password_reset_tokens";
CREATE TABLE "public"."password_reset_tokens" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."personal_access_tokens";
CREATE TABLE "public"."personal_access_tokens" (
  "id" int8 NOT NULL DEFAULT nextval('personal_access_tokens_id_seq'::regclass),
  "tokenable_type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "tokenable_id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "abilities" text COLLATE "pg_catalog"."default",
  "last_used_at" timestamp(0),
  "expires_at" timestamp(0),
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" int8 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email_verified_at" timestamp(0),
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."books_id_seq"
OWNED BY "public"."books"."id";
SELECT setval('"public"."books_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."failed_jobs_id_seq"
OWNED BY "public"."failed_jobs"."id";
SELECT setval('"public"."failed_jobs_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."migrations_id_seq"
OWNED BY "public"."migrations"."id";
SELECT setval('"public"."migrations_id_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."personal_access_tokens_id_seq"
OWNED BY "public"."personal_access_tokens"."id";
SELECT setval('"public"."personal_access_tokens_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 1, false);

-- ----------------------------
-- Uniques structure for table books
-- ----------------------------
ALTER TABLE "public"."books" ADD CONSTRAINT "books_isbn_unique" UNIQUE ("isbn");

-- ----------------------------
-- Primary Key structure for table books
-- ----------------------------
ALTER TABLE "public"."books" ADD CONSTRAINT "books_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_uuid_unique" UNIQUE ("uuid");

-- ----------------------------
-- Primary Key structure for table failed_jobs
-- ----------------------------
ALTER TABLE "public"."failed_jobs" ADD CONSTRAINT "failed_jobs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "public"."migrations" ADD CONSTRAINT "migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table password_reset_tokens
-- ----------------------------
ALTER TABLE "public"."password_reset_tokens" ADD CONSTRAINT "password_reset_tokens_pkey" PRIMARY KEY ("email");

-- ----------------------------
-- Indexes structure for table personal_access_tokens
-- ----------------------------
CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" ON "public"."personal_access_tokens" USING btree (
  "tokenable_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "tokenable_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table personal_access_tokens
-- ----------------------------
ALTER TABLE "public"."personal_access_tokens" ADD CONSTRAINT "personal_access_tokens_token_unique" UNIQUE ("token");

-- ----------------------------
-- Primary Key structure for table personal_access_tokens
-- ----------------------------
ALTER TABLE "public"."personal_access_tokens" ADD CONSTRAINT "personal_access_tokens_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_email_unique" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

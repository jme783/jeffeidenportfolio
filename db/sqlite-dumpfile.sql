BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" text NOT NULL);
INSERT INTO "schema_migrations" VALUES('20140518165434');
INSERT INTO "schema_migrations" VALUES('20140518170806');
INSERT INTO "schema_migrations" VALUES('20140518171335');
INSERT INTO "schema_migrations" VALUES('20140518180553');
INSERT INTO "schema_migrations" VALUES('20140613032115');
INSERT INTO "schema_migrations" VALUES('20140618124046');
INSERT INTO "schema_migrations" VALUES('20140618125224');
CREATE TABLE "active_admin_comments" ("id" SERIAL PRIMARY KEY NOT NULL, "namespace" text, "body" text, "resource_id" text NOT NULL, "resource_type" text NOT NULL, "author_id" integer, "author_type" text, "created_at" timestamp, "updated_at" timestamp);
CREATE TABLE "testimonials" ("id" SERIAL PRIMARY KEY NOT NULL, "author_name" text, "author_company" text, "author_position" text, "blurb_text" text, "created_at" timestamp, "updated_at" timestamp, "portrait" text);
INSERT INTO "testimonials" VALUES(1,'Brad Morehead','LiveWatch Security','CEO','Jeff has great ideas coupled with a passion to create great products. He is incredibly honest, hardworking and resourceful. His thirst for knowledge compels him to continue to try new things and master them.','2014-05-18 17:19:04.982996','2014-05-18 18:07:57.413629','https://media.licdn.com/media/p/8/005/059/084/09de6bd.jpg');
INSERT INTO "testimonials" VALUES(2,'Chris Sell','URX ','Product Lead','He is trustworthy, and honest which proved to be an absolute must while we were working together and figuring things out for PresentBee.com. His good character provides the base for building a great team.','2014-05-18 17:20:22.165101','2014-05-18 18:07:36.760006','https://media.licdn.com/media/p/6/005/01a/065/0f914c1.jpg');
INSERT INTO "testimonials" VALUES(3,'Vince Leung','MentorMob','CEO','He''s been an entrepreneur before. He knows what obstacles he will face and figure out how to get around them.','2014-05-18 18:10:33.259302','2014-05-18 18:10:33.259302','https://media.licdn.com/media/p/2/000/1a7/1ad/3e7ddc1.jpg');
INSERT INTO "testimonials" VALUES(4,'Andrew Allen','ASAPer','Founder','Jeff and I ran companies in the same incubator space and I had the pleasure of collaborating with him on several projects. The aspect I appreciate most about Jeff is the contagious passion he brings to everything he works on. He is able to rally a team around a common goal even when that goal is difficult or tedious. Jeff has undertaken complex programming tasks with confidence, has a keen eye for design and a strong business acumen.','2014-06-13 01:30:58.768969','2014-06-13 01:30:58.768969','https://media.licdn.com/media/p/3/005/014/090/2957332.jpg');
CREATE TABLE "skills" ("id" SERIAL PRIMARY KEY NOT NULL, "name" text, "image" text, "created_at" timestamp, "updated_at" timestamp);
INSERT INTO "skills" VALUES(1,'Development','ninja_developer.png','2014-06-13 03:23:48.157053','2014-06-13 03:23:48.157053');
INSERT INTO "skills" VALUES(2,'UX & Design','ninja_designer.png','2014-06-13 03:24:21.392567','2014-06-13 03:24:21.392567');
INSERT INTO "skills" VALUES(3,'Product Management','ninja_product.png','2014-06-13 03:24:54.316428','2014-06-13 03:24:54.316428');
INSERT INTO "skills" VALUES(4,'Marketing & Sales','ninja_marketing.png','2014-06-13 03:25:20.891817','2014-06-13 03:25:20.891817');
CREATE TABLE "known_technologies" ("id" SERIAL PRIMARY KEY NOT NULL, "name" text, "created_at" timestamp, "updated_at" timestamp, "skill_id" integer);
INSERT INTO "known_technologies" VALUES(1,'Balsamiq','2014-06-18 12:53:45.067673','2014-06-18 12:57:30.351774',2);
INSERT INTO "known_technologies" VALUES(2,'Photoshop','2014-06-18 12:57:51.568986','2014-06-18 12:57:51.568986',2);
INSERT INTO "known_technologies" VALUES(3,'Illustrator','2014-06-18 12:58:05.001618','2014-06-18 12:58:05.001618',2);
INSERT INTO "known_technologies" VALUES(4,'Ruby on Rails','2014-06-18 13:03:13.946879','2014-06-18 13:03:13.946879',1);
INSERT INTO "known_technologies" VALUES(5,'HTML/CSS','2014-06-18 13:03:33.096827','2014-06-18 13:03:33.096827',1);
INSERT INTO "known_technologies" VALUES(6,'JavaScript','2014-06-18 13:04:03.717542','2014-06-18 13:04:03.717542',1);
INSERT INTO "known_technologies" VALUES(7,'AJAX','2014-06-18 13:04:22.382548','2014-06-18 13:04:22.382548',1);
INSERT INTO "known_technologies" VALUES(8,'Heroku Deployment','2014-06-18 13:04:56.245899','2014-06-18 13:04:56.245899',1);
INSERT INTO "known_technologies" VALUES(9,'APIs','2014-06-18 13:07:18.152577','2014-06-18 13:07:18.152577',1);
INSERT INTO "known_technologies" VALUES(10,'Google Analytics','2014-06-18 13:07:37.590901','2014-06-18 13:07:37.590901',4);
INSERT INTO "known_technologies" VALUES(11,'Google AdWords','2014-06-18 13:07:50.485607','2014-06-18 13:07:50.485607',4);
INSERT INTO "known_technologies" VALUES(12,'Optimizely','2014-06-18 13:08:03.760392','2014-06-18 13:08:03.760392',4);
INSERT INTO "known_technologies" VALUES(13,'Mixpanel','2014-06-18 13:08:23.289990','2014-06-18 13:08:23.289990',4);
INSERT INTO "known_technologies" VALUES(14,'Responsive Design','2014-06-18 13:10:07.330919','2014-06-18 13:10:07.330919',2);
INSERT INTO "known_technologies" VALUES(15,'Agile Methodologies','2014-06-18 13:12:38.138752','2014-06-18 13:12:38.138752',3);
INSERT INTO "known_technologies" VALUES(16,'Search Engine Optimization','2014-06-18 13:15:53.587130','2014-06-18 13:15:53.587130',4);
INSERT INTO "known_technologies" VALUES(17,'GIT','2014-06-18 13:17:13.259934','2014-06-18 13:17:13.259934',1);
INSERT INTO "known_technologies" VALUES(18,'JIRA','2014-06-18 13:18:34.212000','2014-06-18 13:18:34.212000',3);
INSERT INTO "known_technologies" VALUES(19,'Pivotal Tracker','2014-06-18 13:19:04.013217','2014-06-18 13:19:04.013217',3);
INSERT INTO "known_technologies" VALUES(20,'Developer Management','2014-06-18 13:19:50.668415','2014-06-18 13:19:50.668415',3);
INSERT INTO "known_technologies" VALUES(21,'Project Planning','2014-06-18 13:20:39.076413','2014-06-18 13:20:39.076413',3);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE INDEX "index_active_admin_comments_on_namespace" ON "active_admin_comments" ("namespace");
CREATE INDEX "index_active_admin_comments_on_author_type_and_author_id" ON "active_admin_comments" ("author_type", "author_id");
CREATE INDEX "index_active_admin_comments_on_resource_type_and_resource_id" ON "active_admin_comments" ("resource_type", "resource_id");
COMMIT;

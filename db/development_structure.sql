CREATE TABLE `architecture_types` (`id` integer PRIMARY KEY AUTOINCREMENT, `architecture_type` varchar(255), `created_at` timestamp, `updated_at` timestamp);
CREATE TABLE `building_topographies` (`id` integer PRIMARY KEY AUTOINCREMENT, `building_topography` varchar(255), `created_at` timestamp, `updated_at` timestamp, `building_id` integer);
CREATE TABLE `building_types` (`id` integer PRIMARY KEY AUTOINCREMENT, `note` text, `created_at` timestamp, `updated_at` timestamp, `event_id` integer, `building_type` varchar(255), `architecture_type_id` integer);
CREATE TABLE "buildings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "latitude" decimal, "longitude" decimal, "topography" varchar(255), "note" text, "created_at" datetime, "updated_at" datetime, "site_id" integer, "building_topography_id" integer, "lat" decimal(15,10), "lng" decimal(15,10));
CREATE TABLE `church_metadata` (`id` integer PRIMARY KEY AUTOINCREMENT, `type` varchar(255), `plan` varchar(255), `note` text, `created_at` timestamp, `updated_at` timestamp, `event_id` integer, `building_type_id` integer, `churchmeta_type_id` integer);
CREATE TABLE `churchmeta_types` (`id` integer PRIMARY KEY AUTOINCREMENT, `churchmeta_type` varchar(255), `created_at` timestamp, `updated_at` timestamp, `church_metadata_id` integer);
CREATE TABLE `event_types` (`id` integer PRIMARY KEY AUTOINCREMENT, `event_type` varchar(255), `created_at` timestamp, `updated_at` timestamp, `event_id` integer);
CREATE TABLE `events` (`id` integer PRIMARY KEY AUTOINCREMENT, `begin_date` integer, `earliest_begin_date` integer, `latest_begin_date` integer, `end_date` integer, `earliest_end_date` integer, `latest_end_date` integer, `building_type` varchar(255), `event_type` varchar(255), `created_at` timestamp, `updated_at` timestamp, `building_id` integer, `note` varchar(255), `building_type_id` integer, `event_type_id` integer, `patron_type_id` integer, `military_order_id` integer, `patron_id` integer);
CREATE TABLE `events_patrons` (`event_id` integer, `patron_id` integer);
CREATE TABLE `fortmeta_monast_blgs` (`id` integer PRIMARY KEY AUTOINCREMENT, `fortmeta_monast_bldgs` varchar(255), `created_at` timestamp, `updated_at` timestamp, `fortress_metadata_id` integer);
CREATE TABLE `fortmeta_plantypes` (`id` integer PRIMARY KEY AUTOINCREMENT, `fortmeta_plantype` varchar(255), `created_at` timestamp, `updated_at` timestamp, `fortress_metadata_id` integer);
CREATE TABLE `fortmeta_settlements` (`id` integer PRIMARY KEY AUTOINCREMENT, `fortmeta_settlement` varchar(255), `created_at` timestamp, `updated_at` timestamp, `fortress_metadata_id` integer);
CREATE TABLE `fortress_metadata` (`id` integer PRIMARY KEY AUTOINCREMENT, `relationship_to_settlement` varchar(255), `plan_type` varchar(255), `monastic_buildings` varchar(255), `created_at` timestamp, `updated_at` timestamp, `event_id` integer, `fortmeta_settlement_id` integer, `fortmeta_plantype_id` integer, `fortmeta_monast_bldg_id` integer, `building_type_id` integer, `fortmeta_plan_type_id` integer, `fortmeta_monast_bldgs_id` integer, `formeta_settlement_id` integer, `fortmeta_monast_blg_id` integer);
CREATE TABLE `fortress_metadata_fortmeta_monast_blgs` (`fortress_metadatum_id` integer, `fortmeta_monast_blg_id` integer);
CREATE TABLE `military_orders` (`id` integer PRIMARY KEY AUTOINCREMENT, `name` varchar(255), `origin_date` integer, `dissolution_date` integer, `note` text, `created_at` timestamp, `updated_at` timestamp, `event_id` integer, `milorders_name_id` integer);
CREATE TABLE `milorders_names` (`id` integer PRIMARY KEY AUTOINCREMENT, `order_name` varchar(255), `created_at` timestamp, `updated_at` timestamp, `military_order_id` integer);
CREATE TABLE `monastic_metadata` (`id` integer PRIMARY KEY AUTOINCREMENT, `buildings` varchar(255), `note` text, `created_at` timestamp, `updated_at` timestamp, `event_id` integer, `building_type_id` integer, `monastmeta_bldg_id` integer, `monastmeta_bldgs_id` integer);
CREATE TABLE `monastmeta_bldgs` (`id` integer PRIMARY KEY AUTOINCREMENT, `monastmeta_bldgs` varchar(255), `created_at` timestamp, `updated_at` timestamp, `monastic_metadata_id` integer);
CREATE TABLE `order_names` (`id` integer PRIMARY KEY AUTOINCREMENT, `order_name` varchar(255), `created_at` timestamp, `updated_at` timestamp, `order_id` integer);
CREATE TABLE `patron_dates` (`id` integer PRIMARY KEY AUTOINCREMENT, `patron_dates` varchar(255), `created_at` timestamp, `updated_at` timestamp, `patron_id` integer);
CREATE TABLE `patron_kingdoms` (`id` integer PRIMARY KEY AUTOINCREMENT, `patron_kingdom` varchar(255), `created_at` timestamp, `updated_at` timestamp, `patron_id` integer);
CREATE TABLE `patron_names` (`id` integer PRIMARY KEY AUTOINCREMENT, `patron_name` varchar(255), `created_at` timestamp, `updated_at` timestamp, `patron_id` integer);
CREATE TABLE `patron_types` (`id` integer PRIMARY KEY AUTOINCREMENT, `patron_type` varchar(255), `created_at` timestamp, `updated_at` timestamp, `patron_id` integer);
CREATE TABLE `patrons` (`id` integer PRIMARY KEY AUTOINCREMENT, `name` varchar(255), `type` varchar(255), `reign_begins` integer, `reign_ends` integer, `kingdom` varchar(255), `note` text, `created_at` timestamp, `updated_at` timestamp, `event_id` integer, `patron_name_id` integer, `patron_type_id` integer, `patron_kingdom_id` integer, `patron_date_id` integer);
CREATE TABLE `schema_migrations` (`version` varchar(255) NOT NULL);
CREATE TABLE `sessions` (`id` integer PRIMARY KEY AUTOINCREMENT, `session_id` varchar(255) NOT NULL, `data` text, `created_at` timestamp, `updated_at` timestamp);
CREATE TABLE `site_principalities` (`id` integer PRIMARY KEY AUTOINCREMENT, `principality_name` varchar(255), `created_at` timestamp, `updated_at` timestamp, `site_id` integer);
CREATE TABLE `sites` (`id` integer PRIMARY KEY AUTOINCREMENT, `name` varchar(255), `principality` varchar(255), `notes` text, `created_at` timestamp, `updated_at` timestamp, `site_principality_id` integer);
CREATE TABLE `users` (`id` integer PRIMARY KEY AUTOINCREMENT, `email` varchar(255) NOT NULL DEFAULT '', `encrypted_password` varchar(128) NOT NULL DEFAULT '', `reset_password_token` varchar(255), `reset_password_sent_at` timestamp, `remember_created_at` timestamp, `sign_in_count` integer DEFAULT 0, `current_sign_in_at` timestamp, `last_sign_in_at` timestamp, `current_sign_in_ip` varchar(255), `last_sign_in_ip` varchar(255), `created_at` timestamp, `updated_at` timestamp, `approved` boolean NOT NULL DEFAULT 'f');
CREATE INDEX `index_sessions_on_session_id` ON `sessions` (`session_id`);
CREATE INDEX `index_sessions_on_updated_at` ON `sessions` (`updated_at`);
CREATE INDEX `index_users_on_approved` ON `users` (`approved`);
CREATE UNIQUE INDEX `index_users_on_email` ON `users` (`email`);
CREATE UNIQUE INDEX `index_users_on_reset_password_token` ON `users` (`reset_password_token`);
CREATE UNIQUE INDEX `unique_schema_migrations` ON `schema_migrations` (`version`);
INSERT INTO schema_migrations (version) VALUES ('20111104175219');

INSERT INTO schema_migrations (version) VALUES ('20111104175450');

INSERT INTO schema_migrations (version) VALUES ('20111104180315');

INSERT INTO schema_migrations (version) VALUES ('20111104180640');

INSERT INTO schema_migrations (version) VALUES ('20111104181125');

INSERT INTO schema_migrations (version) VALUES ('20111104182126');

INSERT INTO schema_migrations (version) VALUES ('20111104195659');

INSERT INTO schema_migrations (version) VALUES ('20111104200401');

INSERT INTO schema_migrations (version) VALUES ('20111105141105');

INSERT INTO schema_migrations (version) VALUES ('20111109144924');

INSERT INTO schema_migrations (version) VALUES ('20111109185936');

INSERT INTO schema_migrations (version) VALUES ('20111109191522');

INSERT INTO schema_migrations (version) VALUES ('20111109201022');

INSERT INTO schema_migrations (version) VALUES ('20111109201923');

INSERT INTO schema_migrations (version) VALUES ('20111109202139');

INSERT INTO schema_migrations (version) VALUES ('20111109202332');

INSERT INTO schema_migrations (version) VALUES ('20111109202623');

INSERT INTO schema_migrations (version) VALUES ('20111109202911');

INSERT INTO schema_migrations (version) VALUES ('20111109203302');

INSERT INTO schema_migrations (version) VALUES ('20111109203544');

INSERT INTO schema_migrations (version) VALUES ('20111109204530');

INSERT INTO schema_migrations (version) VALUES ('20111109204756');

INSERT INTO schema_migrations (version) VALUES ('20111109205024');

INSERT INTO schema_migrations (version) VALUES ('20111109235057');

INSERT INTO schema_migrations (version) VALUES ('20111117130329');

INSERT INTO schema_migrations (version) VALUES ('20111117131048');

INSERT INTO schema_migrations (version) VALUES ('20111117152909');

INSERT INTO schema_migrations (version) VALUES ('20111117155239');

INSERT INTO schema_migrations (version) VALUES ('20111117163733');

INSERT INTO schema_migrations (version) VALUES ('20111117164004');

INSERT INTO schema_migrations (version) VALUES ('20111117165338');

INSERT INTO schema_migrations (version) VALUES ('20111117170639');

INSERT INTO schema_migrations (version) VALUES ('20111117183232');

INSERT INTO schema_migrations (version) VALUES ('20111117185313');

INSERT INTO schema_migrations (version) VALUES ('20111117190522');

INSERT INTO schema_migrations (version) VALUES ('20111117190923');

INSERT INTO schema_migrations (version) VALUES ('20111122155910');

INSERT INTO schema_migrations (version) VALUES ('20111122195626');

INSERT INTO schema_migrations (version) VALUES ('20111128122057');

INSERT INTO schema_migrations (version) VALUES ('20111128122401');

INSERT INTO schema_migrations (version) VALUES ('20111128151305');

INSERT INTO schema_migrations (version) VALUES ('20111128175907');

INSERT INTO schema_migrations (version) VALUES ('20111128180345');

INSERT INTO schema_migrations (version) VALUES ('20111130132114');

INSERT INTO schema_migrations (version) VALUES ('20120126153812');

INSERT INTO schema_migrations (version) VALUES ('20120127121225');

INSERT INTO schema_migrations (version) VALUES ('20120302235408');

INSERT INTO schema_migrations (version) VALUES ('20120303003317');

INSERT INTO schema_migrations (version) VALUES ('20120303004105');
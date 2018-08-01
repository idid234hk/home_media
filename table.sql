CREATE SCHEMA home;

create table file
(
	id bigint auto_increment
		primary key,
	file_id bigint null,
	file_path text null,
	extension varchar(50) null,
	size mediumtext null,
	created_at timestamp default CURRENT_TIMESTAMP not null,
	created_by text null
)
;

create table metadata
(
	id bigint auto_increment
		primary key,
	link_id bigint null,
	meta text null,
	value text null
)
;

create table music
(
	id bigint auto_increment
		primary key,
	music_id bigint null,
	title text null,
	bit_rate varchar(10) null,
	sample_rate varchar(10) null,
	created_at timestamp default CURRENT_TIMESTAMP not null,
	created_by text null,
	updated_at timestamp default CURRENT_TIMESTAMP not null,
	updated_by text null,
	constraint music_music_id_uindex
		unique (music_id)
)
;

create table music_file
(
	id bigint auto_increment
		primary key,
	music_id bigint null,
	file_id bigint null
)
;


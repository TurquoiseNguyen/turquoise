DROP TABLE IF EXISTS app_user CASCADE;
CREATE TABLE app_user(
	id BIGINT not null PRIMARY KEY,
	name VARCHAR(36) not null unique,
	first_name VARCHAR(36),
	last_name VARCHAR(36),
	mid_name VARCHAR(100),
	email VARCHAR(200) not null unique,
	emailVerified boolean,
	encryted_password VARCHAR(128) not null
);

DROP TABLE IF EXISTS app_role CASCADE;
CREATE TABLE app_role(
	id BIGINT not null PRIMARY KEY,
	name VARCHAR(30) not null unique
);

DROP TABLE IF EXISTS user_role CASCADE;
CREATE TABLE user_role(
	id BIGINT not null PRIMARY KEY,
	user_id BIGINT not null REFERENCES app_user(id),
	role_id BIGINT not null REFERENCES app_role(id)
);

DROP TABLE IF EXISTS oauth2_token CASCADE;
CREATE TABLE oauth2_token(
	id BIGINT not null PRIMARY KEY,
	token VARCHAR(255) not null,
	provider VARCHAR(8) not null,
	user_id BIGINT not null REFERENCES app_user(id)
);

DROP TABLE IF EXISTS password_reset_token CASCADE;
CREATE TABLE password_reset_token(
	id BIGINT not null PRIMARY KEY,
	expiry_date timestamp not null,
	token VARCHAR(255) not null unique,
	user_id BIGINT not null REFERENCES app_user(id)
);

DROP TABLE IF EXISTS config CASCADE;
CREATE TABLE config(
	id BIGINT not null PRIMARY KEY,
	name VARCHAR(36) not null unique,
	val VARCHAR(200) not null
);

DROP TABLE IF EXISTS region_type CASCADE;
CREATE TABLE region_type(
	id BIGINT not null PRIMARY KEY,
	name VARCHAR(100) not null,
	call VARCHAR(100) null,
	level SMALLINT not null
);

DROP TABLE IF EXISTS region CASCADE;
CREATE TABLE region(
	id BIGINT not null PRIMARY KEY,
	name VARCHAR(100) not null,
	fname VARCHAR(200) not null,
	type_id BIGINT REFERENCES region_type(id),
	superior_id BIGINT REFERENCES region(id)
);

DROP TABLE IF EXISTS persistent_logins CASCADE;
CREATE TABLE persistent_logins (
	series varchar(64) not null PRIMARY KEY,
    username varchar(64) not null,
    token varchar(64) not null,
    last_used timestamp not null
);


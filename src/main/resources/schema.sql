DROP TABLE IF EXISTS jp_users CASCADE;
CREATE TABLE jp_users(
	id BIGINT not null PRIMARY KEY,
	user_login VARCHAR(60),
	user_pass VARCHAR(64),
	user_nicename VARCHAR(50),
	user_email VARCHAR(100),
	user_url VARCHAR(100),
	user_registered TIME,
	user_activation_key VARCHAR(60),
	user_status INTEGER,
	display_name VARCHAR(250)
);

CREATE INDEX user_login ON jp_users(user_login);

CREATE INDEX user_nicename ON jp_users(user_nicename);

DROP TABLE IF EXISTS jp_usermeta CASCADE;
CREATE TABLE jp_usermeta(
	umeta_id BIGINT not null PRIMARY KEY,
	user_id BIGINT not null REFERENCES jp_users(id),
	meta_key VARCHAR(255),
	meta_type TEXT
);

CREATE INDEX user_id ON jp_usermeta(user_id);

CREATE INDEX meta_key ON jp_usermeta(meta_key);


DROP TABLE IF EXISTS app_user CASCADE;
CREATE TABLE jp_users(
	id BIGINT(20) not null PRIMARY KEY,
	user_login VARCHAR(60),
	user_pass VARCHAR(64),
	user_nicename VARCHAR(50),
	user_email VARCHAR(100),
	user_url VARCHAR(100),
	user_registered TIME,
	user_activation_key VARCHAR(60),
	user_status INT(11),
	display_name VARCHAR(250)
);

CREATE UNIQUE INDEX user_login ON jp_users(user_login);

CREATE UNIQUE INDEX user_nicename ON jp_users(user_nicename);



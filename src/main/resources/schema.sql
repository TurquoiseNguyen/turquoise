DROP TABLE IF EXISTS jp_users CASCADE;
CREATE TABLE jp_users(
	id BIGINT(20) NOT NULL PRIMARY KEY,
	user_login VARCHAR(60),
	user_pass VARCHAR(64),
	user_nicename VARCHAR(50)
);

CREATE UNIQUE INDEX user_login ON jp_users(user_login);

CREATE UNIQUE INDEX user_nicename ON jp_users(user_nicename);



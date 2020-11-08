
DROP TABLE signal_user;


CREATE TABLE signal_user (
	user_id VARCHAR(50) NOT NULL PRIMARY KEY,
	user_pw VARCHAR(50) NOT NULL,
	user_name VARCHAR(50) NOT NULL,
	user_birth VARCHAR(50),
	user_email VARCHAR(100) NOT NULL,
	user_phone VARCHAR(50) NOT NULL
)





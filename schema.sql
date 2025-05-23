CREATE TABLE user (
	id INTEGER NOT NULL, 
	username VARCHAR(64) NOT NULL, 
	password VARCHAR(128) NOT NULL, 
	PRIMARY KEY (id), 
	UNIQUE (username)
);
CREATE TABLE message (
	id INTEGER NOT NULL, 
	sender_id INTEGER, 
	content TEXT NOT NULL, 
	timestamp DATETIME, 
	PRIMARY KEY (id), 
	FOREIGN KEY(sender_id) REFERENCES user (id)
);

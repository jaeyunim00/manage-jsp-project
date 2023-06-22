use jspbookdb;

CREATE TABLE IF NOT EXISTS member(
	id VARCHAR(20) NOT NULL,
	passwd VARCHAR(20),
	email VARCHAR(30),
	PRIMARY KEY(id)
)

show tables;

desc member;

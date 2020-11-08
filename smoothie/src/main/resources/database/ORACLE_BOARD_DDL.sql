
DROP TABLE signal_board;


CREATE TABLE signal_board (
	board_id VARCHAR(50) NOT NULL PRIMARY KEY,
	board_subject VARCHAR(50) NOT NULL,
	board_date VARCHAR(50) NOT NULL,
	board_writer VARCHAR(10) NOT NULL
)
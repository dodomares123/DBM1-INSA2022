----------------------
--Tables' Clear:
----------------------
DROP TABLE if EXISTS goals CASCADE;
DROP TABLE if EXISTS matches CASCADE;
DROP TABLE if EXISTS managers CASCADE;
DROP TABLE if EXISTS players CASCADE;
DROP TABLE if EXISTS teams CASCADE;
DROP TABLE if EXISTS stadiums CASCADE;

------------------
--TABLE Creation--
------------------

CREATE TABLE stadiums(
	stadium_name VARCHAR(40),
	city VARCHAR(40),
	country VARCHAR(40),
	capacity INT,
	PRIMARY KEY(stadium_name)
);

CREATE TABLE teams(
	team_name VARCHAR(40),
	country VARCHAR(40),
	home_stadium VARCHAR(40),
	PRIMARY KEY(team_name)
);

CREATE TABLE players(
	player_ID VARCHAR(10),
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	nationality VARCHAR(30),
	date_of_birth DATE,
	team_name VARCHAR(40),
	jersey_number INT,
	position VARCHAR(20),
	height INT,
	weight INT,
	foot CHAR, 
	PRIMARY KEY(player_ID)
);

CREATE TABLE managers(
	manager_ID VARCHAR(3),
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	nationality VARCHAR(30),
	date_of_birth DATE,
	team_name VARCHAR(40),
	PRIMARY KEY(manager_ID)
);

CREATE TABLE matches(
	match_ID VARCHAR(10),
	season VARCHAR(20),
	home_team VARCHAR(40),
	away_team VARCHAR(40),
	stadium_name VARCHAR(40),
	home_team_goals INT,
	away_team_goals INT,
	attendance INT,
	PRIMARY KEY(match_ID)
);

CREATE TABLE goals(
	goal_ID VARCHAR(10),
	match_ID VARCHAR(10),
	player_ID VARCHAR(10),
	time INT,
	assist_player_ID VARCHAR(10),
	goal_description VARCHAR(25),
	PRIMARY KEY(goal_ID)
);
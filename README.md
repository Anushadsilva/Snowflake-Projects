# Snowflake-Projects

Project 1: Producing Soccer Insights for a Sports Media Agency

Schema name: SOCCER
Table Name(s): TBL_UEFA_2020 | TBL_UEFA_2021 | TBL_UEFA_2022
Note : All three tables have same column names and data types
Column	Definition	Data type
STAGE	Stage of the March	VARCHAR(50)
DATE	When the match occurred.	DATE
PENS	Did the match end with penalty	VARCHAR(50)
PENS_HOME_SCORE	In case of penalty, score by home team	VARCHAR(50)
PENS_AWAY_SCORE	In case of penalty, score by away team	VARCHAR(50)
TEAM_NAME_HOME	Team home name	VARCHAR(50)
TEAM_NAME_AWAY	Team away name	VARCHAR(50)
TEAM_HOME_SCORE	Team home score	NUMBER
TEAM_AWAY_SCORE	Team away score	NUMBER
POSSESSION_HOME	Ball possession for the home team	FLOAT
POSSESSION_AWAY	Ball possession for the away team	FLOAT
TOTAL_SHOTS_HOME	Number of shots by the home team	NUMBER
TOTAL_SHOTS_AWAY	Number of shots by the away team	NUMBER
SHOTS_ON_TARGET_HOME	Total shot for home team	FLOAT
SHOTS_ON_TARGET_AWAY	Total shot for away team	FLOAT
DUELS_WON_HOME	duel win possession of ball - for home team	NUMBER
DUELS_WON_AWAY	duel win possession of ball - for away team	NUMBER
PREDICTION_TEAM_HOME_WIN	Probability of home team to win	FLOAT
PREDICTION_DRAW	Probability of draw	FLOAT
PREDICTION_TEAM_AWAY_WIN	Probability of away team to win	FLOAT
LOCATION	Stadium where the match was held	VARCHAR(50)
Note that in Snowflake all databases, tables, 

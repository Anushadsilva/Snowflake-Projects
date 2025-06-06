

#Q1:

#Find the top 3 teams which scored highest goals while playing at their home ground in
#UEFA Champions League 2020-21. The output should contain two columns:
#TEAM_NAME_HOME and TEAM_HOME_SCORE arranged in descending order of TEAM_HOME_SCORE.

SELECT TEAM_NAME_HOME, TEAM_HOME_SCORE
-- Select UEFA Champions League 2020-21
FROM SOCCER.TBL_UEFA_2020
-- Descending on TEAM_HOME_SCORE and limiting to the top 3 teams
ORDER BY TEAM_HOME_SCORE DESC
LIMIT 3;

#Q2

#Find the team with majority possession for maximum number of times during
#UEFA Champions League 2021-22. The result should include two columns:
#TEAM_NAME and GAME_COUNT which is number of times the team had majority
#possession while playing soccer game.


SELECT
    CASE
		-- Home team name if they had more possession
		WHEN POSSESSION_HOME > POSSESSION_AWAY THEN TEAM_NAME_HOME
		-- Away team name if they had more possession
		WHEN POSSESSION_AWAY > POSSESSION_HOME THEN TEAM_NAME_AWAY
		ELSE NULL END AS TEAM_NAME,
	COUNT(*) AS GAME_COUNT
FROM SOCCER.TBL_UEFA_2021
-- Group by team, order by number of games in descending order
-- and limit the results
GROUP BY TEAM_NAME
ORDER BY GAME_COUNT DESC
LIMIT 1;


#Q3:

#Find the list of teams for each stage of the game, which won the duel in a match but still
#ended up losing the game in UEFA Championship 2022-23.
#The output should contain two columns: STAGE and TEAM_LOST


SELECT STAGE,
	CASE
    -- Select home team which won the duel but lost game
    WHEN DUELS_WON_HOME > DUELS_WON_AWAY AND TEAM_HOME_SCORE < TEAM_AWAY_SCORE THEN TEAM_NAME_HOME
    -- Select away team which won the duel but lost game
    WHEN DUELS_WON_AWAY > DUELS_WON_HOME AND TEAM_AWAY_SCORE < TEAM_HOME_SCORE THEN TEAM_NAME_AWAY
    ELSE NULL
    -- Alias the name of the team which lost the game as TEAM_LOST
    END AS TEAM_LOST
FROM SOCCER.TBL_UEFA_2022
-- Filter where the duel and score conditions were met
WHERE TEAM_LOST IS NOT NULL;
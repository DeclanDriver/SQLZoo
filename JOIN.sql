1. SELECT matchid,player FROM goal 
  WHERE teamid LIKE 'Ger'

2. SELECT id,stadium,team1,team2
  FROM game
WHERE id = 1012 

3. SELECT player,teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
WHERE teamid = 'Ger'

4. SELECT team1, team2, player
FROM game JOIN goal ON id = matchid
WHERE player LIKE 'Mario%'

5. SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON teamid = id
 WHERE gtime<=10

6. 

8. SELECT player
  FROM game JOIN goal ON matchid = id 
    WHERE (team1='GER' OR team2='GER') AND teamid != 'Ger'
GROUP BY player

9. SELECT teamname, COUNT(teamid)
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname

10. SELECT stadium, COUNT(teamid)
FROM goal JOIN game ON id = matchid
GROUP BY stadium

13. SELECT mdate,
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game LEFT JOIN goal ON matchid = id
GROUP BY mdate, matchid, team1, team2
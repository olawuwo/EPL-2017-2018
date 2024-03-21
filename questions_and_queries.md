# Lists of questions and corresponding SQL queries.
Below are the questions along with the SQL queries I've utilized to address them. I've employed various SQL syntax including select statements, joins, aggregations, subqueries, and window functions such as Common Table Expressions (CTEs) and Rank. Please check it out and let me know if you have any questions or alternative approaches to solving any of these queries. Thank you.

### 1. Display the total number of matches played in the EPL 2017/2018 season.

```sql
SELECT
	COUNT(*) AS total_matches
FROM
	epl_matches.matchresults;
```
**Result**
| total_matches |
|---------------|
| 380           |

Query returned 380. Meaning, a total of 380 matches was played in the 2017/2018.

### 2. Count all the matches involved “Manchester United FC” in the 2017/2018 season.
```sql
SELECT
	COUNT(*) AS man_u_matches
FROM
	epl_matches.matchresults
WHERE
	hometeam = 'Manchester United FC'
	OR awayteam = 'Manchester United FC';
```
**Result**
| man_u_matches |
|---------------|
| 38            |

Query returned 38. Tha it, Manchester United FC played a total of 38 matches (home and away) in the 2017/2018 season.

### 3. Display all the teams that played the EPL matches in the season.

To display all the teams, I utilised the **UNION** operator to ensure that only distinct team names are returned.

```sql
SELECT
	hometeam AS teams
FROM
	epl_matches.matchresults
UNION
SELECT
	awayteam AS teams
FROM
	epl_matches.matchresults;
```
Below is a list of all the 20 teams in the 2017/2018 season.

**Result**
| teams                    |
|--------------------------|
| Liverpool FC             |
| Watford FC               |
| Huddersfield Town AFC    |
| Manchester City FC       |
| Stoke City FC            |
| Brighton & Hove Albion FC|
| Manchester United FC     |
| Newcastle United FC      |
| Everton FC               |
| Southampton FC           |
| Crystal Palace FC        |
| Arsenal FC               |
| AFC Bournemouth          |
| Chelsea FC               |
| West Bromwich Albion FC  |
| Burnley FC               |
| Swansea City AFC         |
| West Ham United FC       |
| Leicester City FC        |
| Tottenham Hotspur FC     |

### 4. Display the total matches played in January that had a “win”.  List the matchdate, teams that played and the match score.
```sql
WITH
	jan_matches AS (
		SELECT
			*
		FROM
			epl_matches.matchresults
		WHERE
			EXTRACT(MONTH FROM matchdate) = 1
	)

SELECT
	matchdate,
	hometeam,
	fthg,
	ftag,
	awayteam
FROM
	jan_matches
WHERE
	(fthg > ftag)
	OR (fthg < ftag);
```
In January, there were a total of 28 matches where either the home team or the away team secured a "win".

**Result**
| matchdate |	hometeam |	fthg |	ftag |	awayteam |
| ---- | ---- | ---- | ----- | ----- |
| 2018-01-01 |	Burnley FC |	1 |	2 |	Liverpool FC |
| 2018-01-01 |	Stoke City FC |	0 |	1 |	Newcastle United FC |
| 2018-01-01 |	Everton FC |	0 |	2 |	Manchester United FC |
| 2018-01-01 |	Leicester City FC |	3 |	0 |	Huddersfield Town AFC |
| 2018-01-02 |	West Ham United FC |	2 |	1 |	West Bromwich Albion FC |
| 2018-01-02 |	Swansea City AFC |	0 |	2 |	Tottenham Hotspur FC |
| 2018-01-02 |	Southampton FC |	1 |	2 |	Crystal Palace FC |
| 2018-01-02 |	Manchester City FC | 3 |	1 |	Watford FC |
| 2018-01-14 |	Liverpool FC |	4 |	3 |	Manchester City FC |
| 2018-01-13 |	Huddersfield Town AFC |	1 |	4 |	West Ham United FC |
| 2018-01-14 |	AFC Bournemouth |	2 |	1 |	Arsenal FC |
| 2018-01-13 |	Crystal Palace FC |	1 |	0 |	Burnley FC |
| 2018-01-13 |	West Bromwich Albion FC |	2 |	0 |	Brighton & Hove Albion FC |
| 2018-01-13 |	Tottenham Hotspur FC |	4 |	0 |	Everton FC |
| 2018-01-15 |	Manchester United FC |	3 |	0 |	Stoke City FC |
| 2018-01-20 |	Burnley FC |	0 |	1 |	Manchester United FC |
| 2018-01-20 |	Stoke City FC |	2 |	0 |	Huddersfield Town AFC |
| 2018-01-20 |	Brighton & Hove Albion FC |	0 |	4 |	Chelsea FC |
| 2018-01-20 |	Manchester City FC |	3 |	1 |	Newcastle United FC |
| 2018-01-22 |	Swansea City AFC |	1 |	0 |	Liverpool FC |
| 2018-01-20 |	Leicester City FC |	2 |	0 |	Watford FC |
| 2018-01-20 |	Arsenal FC |	4 |	1 |	Crystal Palace FC |
| 2018-01-30 |	Swansea City AFC |	3 |	1 |	Arsenal FC |
| 2018-01-31 |	Chelsea FC |	0 |	3 |	AFC  Bournemouth
| 2018-01-30 |	Huddersfield Town AFC |	0 |	3 |	Liverpool FC |
| 2018-01-31 |	Manchester City FC |	3 |	0 |	West Bromwich Albion FC |
| 2018-01-31 |	Everton FC |	2 |	1 |	Leicester City FC |
| 2018-01-31 |	Tottenham Hotspur FC |	2 |	0 |	Manchester United FC |

### 5. Display the top five teams that have the best scoring power.
I used "WITH" to calculate the total goals for the teams, assuming that the top 5 teams with the highest goals have the best scoring power.
```sql
WITH
	goals_for AS (
		SELECT
			hometeam AS team,
			SUM(fthg) AS goals
		FROM
			epl_matches.matchresults
		GROUP BY
			hometeam
		UNION ALL
		SELECT
			awayteam AS team,
			SUM(ftag) AS goals
		FROM
			epl_matches.matchresults
		GROUP BY
			awayteam
	)
SELECT
	team,
	SUM(goals) AS total_goals_for
FROM
	goals_for
GROUP BY
	team
ORDER BY
	total_goals_for desc
LIMIT 5;
```
| team                  | total_goals_for |
|-----------------------|-----------------|
| Manchester City FC    | 106             |
| Liverpool FC          | 84              |
| Tottenham Hotspur FC  | 74              |
| Arsenal FC            | 74              |
| Manchester United FC  | 68              |

### 6. Display the top five teams that have the worst defending (total highest goals conceded)
I used "WITH" to calculate the total goals conceded by teams, assuming that the top 5 teams with the highest goals conceded possess the weakest defensive capabilities.
```sql
WITH
	goals_against AS (
		SELECT
			hometeam AS team,
			SUM(ftag) AS goals
		FROM
			epl_matches.matchresults
		GROUP BY
			hometeam
		UNION ALL
		SELECT
			awayteam AS team,
			SUM(fthg) AS goals
		FROM
			epl_matches.matchresults
		GROUP BY
			awayteam
	)
SELECT
	team,
	SUM(goals) AS total_goals_against
	--,RANK() OVER (ORDER BY SUM(goals) DESC)
FROM
	goals_against
GROUP BY
	team
ORDER BY
	total_goals_against desc
LIMIT 5;
```
The query returned the below list of top 5 teams that conceded the most goals in the season. You can remove the comment in the query to rank the teams. 

**Result**
| team                | total_goals_against |
|---------------------|---------------------|
| West Ham United FC  | 68                  |
| Stoke City FC       | 67                  |
| Watford FC          | 64                  |
| AFC Bournemouth     | 61                  |
| Leicester City FC   | 60                  |

### 7. Display top five teams that have the best winning records.
```sql
SELECT
	team,
	COUNT(*) AS total_wins
FROM
	(
		SELECT
			CASE
				WHEN fthg > ftag THEN hometeam
				WHEN ftag > fthg THEN awayteam
				ELSE NULL
			END AS team
		FROM
			epl_matches.matchresults
	) AS wins_data
WHERE
	team IS NOT NULL
GROUP BY
	team
ORDER BY
	total_wins desc
LIMIT 5;
```
I used subqueries to count(calculate) the total wins for each team. The top 5 teams are displayed below.

**Result**
| team                 | total_wins |
|----------------------|------------|
| Manchester City FC   | 32         |
| Manchester United FC | 25         |
| Tottenham Hotspur FC | 23         |
| Liverpool FC         | 21         |
| Chelsea FC           | 21         |

### 8. Which 5 teams had the most “loss”?
```sql
WITH
	home_loss_table AS (
		SELECT
			hometeam AS team,
			SUM(
				CASE
					WHEN (fthg < ftag) THEN 1
					ELSE 0
				END
			) AS home_loss
		FROM
			epl_matches.matchresults
		GROUP BY
			team
		ORDER BY
			home_loss desc
	),
	away_loss_table AS (
		SELECT
			awayteam AS team,
			SUM(
				CASE
					WHEN (fthg > ftag) THEN 1
					ELSE 0
				END
			) AS away_loss
		FROM
			epl_matches.matchresults
		GROUP BY
			team
		ORDER BY
			away_loss desc
	)
SELECT
	home_loss_table.team,
	SUM(home_loss_table.home_loss) + SUM(away_loss_table.away_loss) AS total_loss_result
FROM
	home_loss_table
	JOIN away_loss_table ON home_loss_table.team = away_loss_table.team
GROUP BY
	home_loss_table.team
ORDER BY
	total_loss_result desc
LIMIT 5;
```
**Result**
| team                     | total_loss_result |
|--------------------------|-------------------|
| Swansea City AFC         | 21                |
| Watford FC               | 19                |
| Stoke City FC            | 19                |
| Huddersfield Town AFC    | 19                |
| West Bromwich Albion FC  | 19                |

### 9. Top 5 teams with most Home wins?
```sql
SELECT
	hometeam,
	COUNT(hometeam) AS total_home_wins
FROM
	epl_matches.matchresults
WHERE
	fthg > ftag
GROUP BY
	hometeam
ORDER BY
	total_home_wins desc
LIMIT 5;
```
**Result**
|hometeam              | total_home_wins |
|----------------------|-----------------|
| Manchester City FC   | 16              |
| Manchester United FC | 15              |
| Arsenal FC           | 15              |
| Tottenham Hotspur FC | 13              |
| Liverpool FC         | 12              |

### 10. Top 5 teams with most home loss?
```sql
SELECT
	hometeam,
	COUNT(hometeam) AS total_home_loss
FROM
	epl_matches.matchresults
WHERE
	fthg < ftag
GROUP BY
	hometeam
ORDER BY
	total_home_loss desc
LIMIT 5;
```
**Result**
|hometeam                | total_home_loss |
|------------------------|-----------------|
| Swansea City AFC       | 10              |
| Stoke City FC          | 9               |
| Huddersfield Town AFC  | 8               |
| Southampton FC         | 8               |
| AFC Bournemouth        | 7               |


### 11. Top 5 teams with most away wins?
```sql
SELECT
	awayteam,
	COUNT(awayteam) AS total_away_wins
FROM
	epl_matches.matchresults
WHERE
	fthg < ftag
GROUP BY
	awayteam
ORDER BY
	total_away_wins desc
LIMIT 5;
```
**Result**
| awayteam             | total_away_wins |
|----------------------|-----------------|
| Manchester City FC   | 16              |
| Chelsea FC           | 10              |
| Tottenham Hotspur FC | 10              |
| Manchester United FC | 10              |
| Liverpool FC         | 9               |

### 12. Top 5 teams with most away loss?
```sql
SELECT
	awayteam,
	COUNT(awayteam) AS total_away_loss
FROM
	epl_matches.matchresults
WHERE
	fthg > ftag
GROUP BY
	awayteam
ORDER BY
	total_away_loss desc
LIMIT 5;
```
**Result**
| awayteam                   | total_away_loss |
|----------------------------|-----------------|
| Watford FC                 | 13              |
| Brighton & Hove Albion FC  | 12              |
| West Bromwich Albion FC    | 12              |
| Swansea City AFC           | 11              |
| Newcastle United FC        | 11              |

### 13. Top 5 teams with most home draws?
```sql
SELECT
	hometeam,
	COUNT(hometeam) AS total_home_draws
FROM
	epl_matches.matchresults
WHERE
	fthg = ftag
GROUP BY
	hometeam
ORDER BY
	total_home_draws desc
LIMIT 5;
```
**Result**
| hometeam                   | total_home_draws |
|---------------------------|------------------|
| West Bromwich Albion FC   | 9                |
| Brighton & Hove Albion FC | 8                |
| Southampton FC            | 7                |
| Liverpool FC              | 7                |
| Leicester City FC         | 6                |

### 14. Top 5 teams with most away draws?
```sql
SELECT
	awayteam,
	COUNT(awayteam) AS total_away_draws
FROM
	epl_matches.matchresults
WHERE
	fthg = ftag
GROUP BY
	awayteam
ORDER BY
	total_away_draws desc
LIMIT 5;
```
**Result**
| awayteam           | total_away_draws  |
|--------------------|-------------------|
| Stoke City FC      | 7                 |
| Southampton FC     | 7                 |
| Burnley FC         | 7                 |
| Everton FC         | 6                 |
| AFC Bournemouth    | 6                 |

### 15. Teams with highest goals (goals difference)
```sql
WITH
	home_goals_for AS (
		SELECT
			hometeam AS team,
			SUM(fthg) AS goals_for_home,
			SUM(ftag) AS goals_against_home
		FROM
			epl_matches.matchresults
		GROUP BY
			hometeam
	),
	away_goals_for AS (
		SELECT
			awayteam AS team,
			SUM(ftag) AS goals_for_away,
			SUM(fthg) AS goals_against_away
		FROM
			epl_matches.matchresults
		GROUP BY
			awayteam
	)
SELECT
	home_goals_for.team,
	(
		SUM(home_goals_for.goals_for_home) + SUM(away_goals_for.goals_for_away)
	) - (
		SUM(home_goals_for.goals_against_home) + SUM(away_goals_for.goals_against_away)
	) AS gd
FROM
	home_goals_for
	JOIN away_goals_for ON home_goals_for.team = away_goals_for.team
GROUP BY
	home_goals_for.team
ORDER BY
	gd desc;
```
**Result**
| team                         | gd  |
|------------------------------|-----|
| Manchester City FC           | 79  |
| Liverpool FC                 | 46  |
| Manchester United FC         | 40  |
| Tottenham Hotspur FC         | 38  |
| Chelsea FC                   | 24  |
| Arsenal FC                   | 23  |
| Burnley FC                   | -3  |
| Leicester City FC            | -4  |
| Newcastle United FC          | -8  |
| Crystal Palace FC            | -10 |
| Everton FC                   | -15 |
| AFC Bournemouth              | -16 |
| Southampton FC               | -18 |
| Watford FC                   | -20 |
| Brighton & Hove Albion FC    | -20 |
| West Ham United FC           | -20 |
| West Bromwich Albion FC      | -25 |
| Swansea City AFC             | -28 |
| Huddersfield Town AFC        | -30 |
| Stoke City FC                | -33 |

### 16. Team with the biggest home wins (in terms of goals)
```sql
WITH
	biggest_home_win AS (
		SELECT
			matchdate,
			hometeam,
			fthg,
			ftag,
			awayteam
		FROM
			epl_matches.matchresults
		WHERE
			fthg > ftag
		ORDER BY
			matchdate asc,
			fthg desc,
			ftag asc
	)
SELECT
	*
FROM
	biggest_home_win
WHERE
	(fthg - ftag) >= 5
LIMIT 10;
```
**Result**
| matchdate  | hometeam              | fthg | ftag | awayteam              |
|------------|-----------------------|------|------|-----------------------|
| 2017-09-09 | Manchester City FC    | 5    | 0    | Liverpool FC          |
| 2017-09-23 | Manchester City FC    | 5    | 0    | Crystal Palace FC     |
| 2017-10-14 | Manchester City FC    | 7    | 2    | Stoke City FC         |
| 2017-11-29 | Arsenal FC            | 5    | 0    | Huddersfield Town AFC |
| 2017-12-26 | Liverpool FC          | 5    | 0    | Swansea City AFC      |
| 2017-12-30 | Chelsea FC            | 5    | 0    | Stoke City FC         |
| 2018-03-17 | Liverpool FC          | 5    | 0    | Watford FC            |
| 2018-04-22 | Manchester City FC    | 5    | 0    | Swansea City AFC      |
| 2018-04-28 | Crystal Palace FC     | 5    | 0    | Leicester City FC     |
| 2018-05-06 | Arsenal FC            | 5    | 0    | Burnley FC            |

### 17. Total played matches for all teams
```sql
SELECT
	team,
	SUM(pld) AS pld
FROM
	(
		SELECT
			hometeam AS team,
			COUNT(match_id) AS pld
		FROM
			epl_matches.matchresults
		GROUP BY
			hometeam
		UNION ALL
		SELECT
			awayteam AS team,
			COUNT(match_id) AS pld
		FROM
			epl_matches.matchresults
		GROUP BY
			awayteam
	)
GROUP BY
	team;
```
**Result**
| team                         | pld |
|------------------------------|-----|
| Manchester City FC           | 38  |
| Stoke City FC                | 38  |
| Huddersfield Town AFC        | 38  |
| Arsenal FC                   | 38  |
| Chelsea FC                   | 38  |
| AFC Bournemouth              | 38  |
| Newcastle United FC          | 38  |
| Brighton & Hove Albion FC    | 38  |
| Southampton FC               | 38  |
| Swansea City AFC             | 38  |
| Everton FC                   | 38  |
| West Ham United FC           | 38  |
| Liverpool FC                 | 38  |
| Leicester City FC            | 38  |
| Tottenham Hotspur FC         | 38  |
| West Bromwich Albion FC      | 38  |
| Crystal Palace FC            | 38  |
| Manchester United FC         | 38  |
| Burnley FC                   | 38  |
| Watford FC                   | 38  |

### 18. Team with the biggest away wins (in terms of goals)
```sql
WITH
	biggest_away_wins AS (
		SELECT
			matchdate,
			hometeam,
			fthg,
			ftag,
			awayteam
		FROM
			epl_matches.matchresults
		WHERE
			fthg < ftag
		ORDER BY
			matchdate asc,
			ftag desc
	)
SELECT
	*
FROM
	biggest_away_wins
WHERE
	ABS(fthg - ftag) >= 3
ORDER BY
	ftag desc
LIMIT 1;
```
**Result**
| matchdate  | hometeam      | fthg | ftag | awayteam             |
|------------|---------------|------|------|----------------------|
| 2017-09-16 | Watford FC    | 0    | 6    | Manchester City FC   |

### 19. Teams with most wins (home or away) - total wins
```sql
WITH
	home_wins_table AS (
		SELECT
			hometeam AS team,
			SUM(
				CASE
					WHEN (fthg > ftag) THEN 1
					ELSE 0
				END
			) AS home_wins
		FROM
			epl_matches.matchresults
		GROUP BY
			team
		ORDER BY
			home_wins desc
	),
	away_wins_table AS (
		SELECT
			awayteam AS team,
			SUM(
				CASE
					WHEN (fthg < ftag) THEN 1
					ELSE 0
				END
			) AS away_wins
		FROM
			epl_matches.matchresults
		GROUP BY
			team
		ORDER BY
			away_wins desc
	)
SELECT
	home_wins_table.team,
	SUM(home_wins_table.home_wins) + SUM(away_wins_table.away_wins) AS total_wins_result
FROM
	home_wins_table
	JOIN away_wins_table ON home_wins_table.team = away_wins_table.team
GROUP BY
	home_wins_table.team
ORDER BY
	total_wins_result desc;
```
**Result**
| team                        | total_wins_result |
|-----------------------------|-------------------|
| Manchester City FC          | 32                |
| Manchester United FC        | 25                |
| Tottenham Hotspur FC        | 23                |
| Chelsea FC                  | 21                |
| Liverpool FC                | 21                |
| Arsenal FC                  | 19                |
| Burnley FC                  | 14                |
| Everton FC                  | 13                |
| Leicester City FC           | 12                |
| Newcastle United FC         | 12                |
| AFC Bournemouth             | 11                |
| Watford FC                  | 11                |
| Crystal Palace FC           | 11                |
| West Ham United FC          | 10                |
| Brighton & Hove Albion FC   | 9                 |
| Huddersfield Town AFC       | 9                 |
| Southampton FC              | 8                 |
| Swansea City AFC            | 8                 |
| Stoke City FC               | 7                 |
| West Bromwich Albion FC     | 6                 |

### 20. Teams with most draws (home or away)
```sql
WITH
	home_draw_table AS (
		SELECT
			hometeam AS team,
			SUM(
				CASE
					WHEN (fthg = ftag) THEN 1
					ELSE 0
				END
			) AS home_draw
		FROM
			epl_matches.matchresults
		GROUP BY
			team
		ORDER BY
			home_draw desc
	),
	away_draw_table AS (
		SELECT
			awayteam AS team,
			SUM(
				CASE
					WHEN (fthg = ftag) THEN 1
					ELSE 0
				END
			) AS away_draw
		FROM
			epl_matches.matchresults
		GROUP BY
			team
		ORDER BY
			away_draw desc
	)
SELECT
	home_draw_table.team,
	SUM(home_draw_table.home_draw) + SUM(away_draw_table.away_draw) AS total_draw_result
FROM
	home_draw_table
	JOIN away_draw_table ON home_draw_table.team = away_draw_table.team
GROUP BY
	home_draw_table.team
ORDER BY
	total_draw_result desc;
```
**Result**
| team                       | total_draw_result |
|----------------------------|-------------------|
| Southampton FC             | 14                |
| Brighton & Hove Albion FC  | 13                |
| West Bromwich Albion FC    | 13                |
| Burnley FC                 | 12                |
| West Ham United FC         | 12                |
| Stoke City FC              | 12                |
| Liverpool FC               | 12                |
| Leicester City FC          | 11                |
| AFC Bournemouth            | 11                |
| Crystal Palace FC          | 11                |
| Huddersfield Town AFC      | 10                |
| Swansea City AFC           | 9                 |
| Everton FC                 | 9                 |
| Tottenham Hotspur FC       | 8                 |
| Newcastle United FC        | 8                 |
| Watford FC                 | 8                 |
| Chelsea FC                 | 7                 |
| Arsenal FC                 | 6                 |
| Manchester United FC       | 6                 |
| Manchester City FC         | 4                 |

### 21. Teams with most loss (home or away)
```sql
WITH
	home_loss_table AS (
		SELECT
			hometeam AS team,
			SUM(
				CASE
					WHEN (fthg < ftag) THEN 1
					ELSE 0
				END
			) AS home_loss
		FROM
			epl_matches.matchresults
		GROUP BY
			team
		ORDER BY
			home_loss desc
	),
	away_loss_table AS (
		SELECT
			awayteam AS team,
			SUM(
				CASE
					WHEN (fthg > ftag) THEN 1
					ELSE 0
				END
			) AS away_loss
		FROM
			epl_matches.matchresults
		GROUP BY
			team
		ORDER BY
			away_loss desc
	)
SELECT
	home_loss_table.team,
	SUM(home_loss_table.home_loss) + SUM(away_loss_table.away_loss) AS total_loss_result
FROM
	home_loss_table
	JOIN away_loss_table ON home_loss_table.team = away_loss_table.team
GROUP BY
	home_loss_table.team
ORDER BY
	total_loss_result desc;
```
**Result**
| team                        | total_loss_result |
|-----------------------------|-------------------|
| Swansea City AFC            | 21                |
| Watford FC                  | 19                |
| Huddersfield Town AFC       | 19                |
| Stoke City FC               | 19                |
| West Bromwich Albion FC     | 19                |
| Newcastle United FC         | 18                |
| Southampton FC              | 16                |
| AFC Bournemouth             | 16                |
| Crystal Palace FC           | 16                |
| West Ham United FC          | 16                |
| Brighton & Hove Albion FC   | 16                |
| Everton FC                  | 16                |
| Leicester City FC           | 15                |
| Arsenal FC                  | 13                |
| Burnley FC                  | 12                |
| Chelsea FC                  | 10                |
| Tottenham Hotspur FC        | 7                 |
| Manchester United FC        | 7                 |
| Liverpool FC                | 5                 |
| Manchester City FC          | 2                 |

### 22. Total team goals scored (goals for). Without using CTEs statement
```sql
SELECT
	team,
	SUM(goals) AS total_goals_for
FROM
	(
		SELECT
			hometeam AS team,
			SUM(fthg) AS goals
		FROM
			epl_matches.matchresults
		GROUP BY
			hometeam
		UNION ALL
		SELECT
			awayteam AS team,
			SUM(ftag) AS goals
		FROM
			epl_matches.matchresults
		GROUP BY
			awayteam
	) AS goals_data
GROUP BY
	team
ORDER BY
	total_goals desc;
```
**Result**
| team                        | total_goals_for |
|-----------------------------|-----------------|
| Manchester City FC          | 106             |
| Liverpool FC                | 84              |
| Arsenal FC                  | 74              |
| Tottenham Hotspur FC        | 74              |
| Manchester United FC        | 68              |
| Chelsea FC                  | 62              |
| Leicester City FC           | 56              |
| West Ham United FC          | 48              |
| Crystal Palace FC           | 45              |
| AFC Bournemouth             | 45              |
| Watford FC                  | 44              |
| Everton FC                  | 42              |
| Newcastle United FC         | 39              |
| Southampton FC              | 37              |
| Burnley FC                  | 36              |
| Stoke City FC               | 34              |
| Brighton & Hove Albion FC   | 34              |
| West Bromwich Albion FC     | 31              |
| Huddersfield Town AFC       | 28              |
| Swansea City AFC            | 28              |

### 23. Total team goals against (goals conceded) - Using CTEs statement
```sql
WITH
	goals_against AS (
		SELECT
			hometeam AS team,
			SUM(ftag) AS goals
		FROM
			epl_matches.matchresults
		GROUP BY
			hometeam
		UNION ALL
		SELECT
			awayteam AS team,
			SUM(fthg) AS goals
		FROM
			epl_matches.matchresults
		GROUP BY
			awayteam
	)
SELECT
	team,
	SUM(goals) AS total_goals_against
FROM
	goals_against
GROUP BY
	team
ORDER BY
	total_goals_against desc;
```
**Result**
| team                        | total_goals_against |
|-----------------------------|---------------------|
| West Ham United FC          | 68                  |
| Stoke City FC               | 67                  |
| Watford FC                  | 64                  |
| AFC Bournemouth             | 61                  |
| Leicester City FC           | 60                  |
| Huddersfield Town AFC       | 58                  |
| Everton FC                  | 57                  |
| West Bromwich Albion FC     | 56                  |
| Swansea City AFC            | 56                  |
| Southampton FC              | 55                  |
| Crystal Palace FC           | 55                  |
| Brighton & Hove Albion FC   | 54                  |
| Arsenal FC                  | 51                  |
| Newcastle United FC         | 47                  |
| Burnley FC                  | 39                  |
| Liverpool FC                | 38                  |
| Chelsea FC                  | 38                  |
| Tottenham Hotspur FC        | 36                  |
| Manchester United FC        | 28                  |
| Manchester City FC          | 27                  |

### 24. Report of team, goals for, goals against and goals difference.
```sql
WITH
	home_goals_for AS (
		SELECT
			hometeam AS team,
			SUM(fthg) AS goals_for_home,
			SUM(ftag) AS goals_against_home
		FROM
			epl_matches.matchresults
		GROUP BY
			hometeam
	),
	away_goals_for AS (
		SELECT
			awayteam AS team,
			SUM(ftag) AS goals_for_away,
			SUM(fthg) AS goals_against_away
		FROM
			epl_matches.matchresults
		GROUP BY
			awayteam
	)
SELECT
	home_goals_for.team,
	SUM(home_goals_for.goals_for_home) + SUM(away_goals_for.goals_for_away) AS total_goals_for,
	SUM(home_goals_for.goals_against_home) + SUM(away_goals_for.goals_against_away) AS total_goals_against,
	(
		SUM(home_goals_for.goals_for_home) + SUM(away_goals_for.goals_for_away)
	) - (
		SUM(home_goals_for.goals_against_home) + SUM(away_goals_for.goals_against_away)
	) AS gd
FROM
	home_goals_for
	JOIN away_goals_for ON home_goals_for.team = away_goals_for.team
GROUP BY
	home_goals_for.team
ORDER BY
	total_goals_for desc;
```
**Result**
| team                      | total_goals_for | total_goals_against | gd  |
|---------------------------|-----------------|---------------------|-----|
| Manchester City FC        | 106             | 27                  | 79  |
| Liverpool FC              | 84              | 38                  | 46  |
| Arsenal FC                | 74              | 51                  | 23  |
| Tottenham Hotspur FC      | 74              | 36                  | 38  |
| Manchester United FC      | 68              | 28                  | 40  |
| Chelsea FC                | 62              | 38                  | 24  |
| Leicester City FC         | 56              | 60                  | -4  |
| West Ham United FC        | 48              | 68                  | -20 |
| Crystal Palace FC         | 45              | 55                  | -10 |
| AFC Bournemouth           | 45              | 61                  | -16 |
| Watford FC                | 44              | 64                  | -20 |
| Everton FC                | 42              | 57                  | -15 |
| Newcastle United FC       | 39              | 47                  | -8  |
| Southampton FC            | 37              | 55                  | -18 |
| Burnley FC                | 36              | 39                  | -3  |
| Stoke City FC             | 34              | 67                  | -33 |
| Brighton & Hove Albion FC | 34              | 54                  | -20 |
| West Bromwich Albion FC   | 31              | 56                  | -25 |
| Huddersfield Town AFC     | 28              | 58                  | -30 |
| Swansea City AFC          | 28              | 56                  | -28 |

### 25. Total wins
```sql
SELECT
	team,
	COUNT(*) AS total_wins
FROM
	(
		SELECT
			CASE
				WHEN fthg > ftag THEN hometeam
				WHEN ftag > fthg THEN awayteam
				ELSE NULL
			END AS team
		FROM
			epl_matches.matchresults
	) AS wins_data
WHERE
	team IS NOT NULL
GROUP BY
	team
ORDER BY
	total_wins desc;
```
**Result**
| team                       | total_wins |
|----------------------------|------------|
| Manchester City FC         | 32         |
| Manchester United FC       | 25         |
| Tottenham Hotspur FC       | 23         |
| Liverpool FC               | 21         |
| Chelsea FC                 | 21         |
| Arsenal FC                 | 19         |
| Burnley FC                 | 14         |
| Everton FC                 | 13         |
| Newcastle United FC        | 12         |
| Leicester City FC          | 12         |
| Watford FC                 | 11         |
| AFC Bournemouth            | 11         |
| Crystal Palace FC          | 11         |
| West Ham United FC         | 10         |
| Huddersfield Town AFC      | 9          |
| Brighton & Hove Albion FC  | 9          |
| Swansea City AFC           | 8          |
| Southampton FC             | 8          |
| Stoke City FC              | 7          |
| West Bromwich Albion FC    | 6          |

> [!CAUTION]
> The number of wins for **Southampton FC** is 7; however, the data is incorrect for this particular team.

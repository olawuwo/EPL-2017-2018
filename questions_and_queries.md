# Lists of questions and corresponding SQL queries.

### 1. Display the total number of matches played in the EPL 2017/2018 season.

```sql
SELECT
	COUNT(*) AS total_matches
FROM
	epl_matches.matchresults;
```

| total_matches |
| --- |
| 380 |

Query returned 380. That means, a total of 380 matches was played in the 2017/2018.

### 2. Count all the matches involved “Manchester United FC” in the 2017/2018 season.
```sql
SELECT
	COUNT(*)
FROM
	epl_matches.matchresults
WHERE
	hometeam = 'Manchester United FC'
	OR awayteam = 'Manchester United FC';
```
	38
Query returns 38. Manchester United FC played 38 matches.

### 3. Display all the teams that played the EPL matches in the season.
```sql
SELECT
	hometeam AS team
FROM
	epl_matches.matchresults
UNION
SELECT
	awayteam AS team
FROM
	epl_matches.matchresults;
```
	20


### 4. Display the team with the most “win” in January.
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

	28 matches

### 5. Display the top five teams that have the best scoring power.
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

### 6. Display the top five teams that have the worst defending (highest goals conceded)
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
	total_goals_against desc
LIMIT 5;
```

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

### 8. Display top five teams with best half time result.

### 9. Which teams had the most “loss”?
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
### 10. Display the team with the most consecutive “win

### 11. Top 5 teams with most Home wins?
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

### 12. Top 5 teams with most home loss?
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

### 13. Top 5 teams with most away wins?
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

### 14. Top 5 teams with most away loss?
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

### 15. Top 5 teams with most home draws?
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

### 16. Top 5 teams with most away draws?
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

### 17. Teams with highest goals (goals difference)
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

### 18. Team with the biggest home wins (in terms of goals)
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

### 19. Total played matches for all teams
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

### 20. Team with the biggest away wins (in terms of goals)
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

### 21. Teams with most wins (home or away) - total wins
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

### 22. Teams with most draws (home or away)
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

### 23. Teams with most loss (home or away)
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

### 24. Total team goals scored (goals for) - no with statement
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

### 25. Total team goals against (goals conceded) - with statement
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

### 26. Report of team, goals for, goals against and goals difference.
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

### 27. Total wins
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
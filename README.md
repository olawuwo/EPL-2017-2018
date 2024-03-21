# SQL_EPL-2017-2018

In this project, I used SQL proficiency on the dataset from the English Premier League (EPL) 2017/2018 season to anwser some questions stated below. I've used PowerQuery to clean the [raw data](https://github.com/olawuwo/EPL-2017-2018/blob/0c3f10d36022bfbcdfedff37e89830edcee68f21/Source_data/2017%3A2018%20-%20epl_matches_raw.csv) provide the CSV file. I cleaned up the dates, full-time and halftime scores. 

I proceeded to import the [cleaned CSV data](https://github.com/olawuwo/EPL-2017-2018/blob/0c3f10d36022bfbcdfedff37e89830edcee68f21/Source_data/2017%3A2018%20-%20epl_matches_cleaned.csv) into a PostGreSQL database so as to execute my SQL queries and extract anwsers to the questions. I have also included the [Schema database sql file](Source_data/epl_matches_2017:2018.sql) in the Source data folder. Simply import the file and you're good to go. 
 
More information about the 2017-18 EPL is available on the  [Wikipedia](https://en.wikipedia.org/wiki/2017%E2%80%9318_Premier_League) page. Thanks.

**Author**: Tai Olawuwo <br>
**Email**: [Say Hi!](mailto:olawuwotaiwo@outlook.com)<br>
**LinkedIn**: [Connect with me](https://www.linkedin.com/in/t-olawuwo) <br>

## Questions
1. Display the total number of matches played in the EPL 2017/2018 season.
2. Count all the matches involved “Manchester United FC” in the 2017/2018 season.
3. Display all the teams that played the EPL matches in the season.
4. Display the total matches played in January that had a “win”. List the matchdate, teams that played and the match score.
5. Display the top five teams that have the best scoring power.
6. Display the top five teams that have the worst defending (total highest goals conceded).
7. Display top five teams that have the best winning records.
8. Which 5 teams had the most “loss”?
9. Top 5 teams with most Home wins?
10. Top 5 teams with most home loss?
11. Top 5 teams with most away wins?
12. Top 5 teams with most away loss?
13. Top 5 teams with most home draws?
14. Top 5 teams with most away draws?
15. Teams with highest goals (goals difference)
16. Team with the biggest home wins (in terms of goals)
17. Total played matches for all teams
18. Team with the biggest away wins (in terms of goals)
19. Teams with most wins (home or away). Total wins
20. Teams with most draws (home or away)
21. Teams with most loss (home or away)
22. Total team goals scored (goals for). Without using CTEs statement
23. Total team goals against (goals conceded) - Using CTEs statement
24. Report of team, goals for, goals against and goals difference
25. Display the total wins by team

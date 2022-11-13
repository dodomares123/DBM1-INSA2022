--First Query--
--How many players are from Italy?
select count(player_ID), nationality
from players
where nationality = 'Italy'
group by nationality

--Second query--
--Display the description off all goals scored by Cristiano Ronaldo in the 2017-2018 season.
select goal_description, time
from goals natural join matches natural join players
where first_name = 'Cristiano' and last_name = 'Ronaldo' and season = '2017-2018'

--Third query--
--Display the Home Team, Away Team and the score of the matches in which the home team manager is born later than 1975.
select home_team, away_team, home_team_goals, away_team_goals
from matches inner join teams on matches.home_team = teams.team_name natural join managers
where extract(year from date_of_birth) > 1975

--Fourth query--
--Display the details of the players and the number of scored goals for the 2020-2021 season.
select first_name, last_name, team_name, jersey_number, position, count(goal_ID)
from players inner join goals on players.player_ID = goals.player_ID natural join matches
group by (first_name, last_name, team_name, jersey_number, position, season)
having season = '2020-2021'

--Fifth query--
--Display the stadiums where were played more than 20 matches.
select stadium_name, counts
from(
select stadium_name, count(match_ID) as counts
from stadiums natural join matches
group by stadium_name) number_of_matches
where counts > 20




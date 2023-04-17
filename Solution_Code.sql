# Practise ----Movie DataBase

# Instructions :– 
# Create a database in your sql server then upload all the tables provided in the folder into that database.
# Solve out the following Queries.

Create database movie;

# 1. Write a SQL query to find when the movie 'American Beauty' was released. Return movie release year.

select mov_year "Movie release year"
FROM movie
WHERE mov_title = 'American Beauty';

##       The movie 'American Beauty' was released in the year 1999.

# 2. Write a SQL query to find those movies, which were released before 1998. Return movie title.

SELECT mov_title "Movie Title"
FROM movie
WHERE mov_year<1998
ORDER BY mov_title;

##          The output displays the name of 20 movies, which were released before 1998.

# 3. Write a query where it should contain all the data of the movies which were released after 1995 and their movie duration
#    was greater than 120.

SELECT *
FROM movie
WHERE mov_year>1995 AND mov_time>120;

##		The output displays data of 9 movies which were released after 1995 and their movie duration was greater than 120.

# 4. Write a query to determine the Top 7 movies which were released in the United Kingdom.
#    Sort the data in ascending order of the movie year.

SELECT rev_stars AS "Rating", mov_title AS "Movie Title", mov_year AS "Year"
FROM movie
INNER JOIN ratings USING (mov_id)
WHERE mov_rel_country = "UK"
ORDER BY rev_stars DESC, mov_year
LIMIT 7;

##		The Highest rating for the movie released in the UK is 8.6 where as, the lowest rating is 8.1 .

# 5. Set the language of movie language as 'Chinese' for the movie which has its existing language 
#    as 'Japanese' and the movie year was 2001.

UPDATE movie
SET mov_lang = "Japanese"
WHERE mov_lang = "Chinese" AND mov_year = 2001;

SELECT * FROM movie WHERE mov_year = 2001;

##			The movie language changed.

# 6. Write a SQL query to find the name of all the reviewers who rated the movie 'Slumdog Millionaire'.

SELECT rev_name AS "Reviewer's name"
FROM movie
INNER JOIN ratings USING (mov_id)
INNER JOIN reviewer USING (rev_id)
WHERE mov_title = 'Slumdog Millionaire';

##		The reviewer named Vincent Cadena was the only one who rated the movie, Slumdog Millionaire.

# 7. Write a query which fetches the first name, last name & role played by the actor where 
#    output should all exclude Male actors.

SELECT a.act_fname AS "First Name", a.act_lname AS "Last Name", c.`role` AS "Role played"
FROM actor AS a, cast AS c
WHERE a.act_id = c.act_id AND a.act_gender != 'M';

##			We have 7 Female actresses who played various roles in movies.

# 8. Write a SQL query to find the actors who played a role in the movie 'Annie
#    Hall'. Fetch all the fields of the actor table. (Hint: Use the IN operator).

SELECT * FROM actor WHERE act_id IN (
SELECT act_id FROM cast
INNER JOIN movie USING (mov_id)
WHERE mov_title = 'Annie Hall'
);

##			Woody Allen is the only actor who played a role in the movie Annie Hall.

# 9. Write a SQL query to find those movies that have been released in countries other than the United Kingdom.
#    Return movie title, movie year, movie time, and date of release, releasing country.

SELECT 
	mov_title "Movie Title", mov_year "Movie Year", mov_time "Movie duration", 
	mov_dt_rel "Date of release", mov_rel_country "Country"
FROM movie
WHERE mov_rel_country != "UK";

##		In the given data, we have 3 movies relesed in SW, USA and JP.

# 10. Print genre title, maximum movie duration and count the number of movies in each genre. (HINT: By using inner join)

SELECT 
	gen_title AS "Genre Title", MAX(mov_time) AS ", Maximum Movie Duration", 
	COUNT(mov_title) as "Number of Movies"
FROM genres
INNER JOIN movie_genres USING (gen_id)
INNER JOIN movie USING (mov_id)
GROUP BY gen_title;

##		We have 12 Genre titles with maximum movie durations ranging from 93 mins up to 216 mins 
##		and number of movies in each genre ranging from 1 up to 4 with most having only 1.

# 11. Create a view which should contain the first name, last name, title of the movie & role played by a particular actor.

CREATE VIEW `Actor's role in movies` AS
(
SELECT act_fname AS "First Name", act_lname AS "Last Name", mov_title AS "Movie Title", `role` AS "Role Played"
FROM cast
INNER JOIN actor USING (act_id)
INNER JOIN movie USING (mov_id)
);

##			View created by the name of Actor's role in movies.

SELECT * FROM `Actor's role in movies`;

# 12. Write a SQL query to find the movies with the lowest ratings

# To get the movie name:

SELECT 
	mov_title AS "Movie Title"
FROM 
	movie
WHERE 
	mov_id IN 
(
SELECT mov_id FROM ratings WHERE rev_stars = 
	(
		SELECT MIN(rev_stars) FROM ratings
	)
);

# To get the movie name and rating:

SELECT mov_title AS "Movie Title", rev_stars AS "Minimum rating"
FROM movie
INNER JOIN ratings USING (mov_id)
WHERE rev_stars = 
(SELECT MIN(rev_stars) FROM ratings);

##			The minimum rating stars is 3 and we have 1 movie with that rating, i.e. Boogie Nights.
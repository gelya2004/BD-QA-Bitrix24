create index professions ON people(NAME, ID);
-- Задание 3
-- а) Найти людей которые были и режиссером и продюсером одного фильма:
SELECT a.NAME
FROM people a
JOIN movie_professions b ON a.ID = b.PEOPLE_ID AND b.PROFESSIONS_ID = 1
JOIN movie_professions b2 ON a.ID = b2.PEOPLE_ID AND b2.PROFESSIONS_ID = 2
JOIN movie m ON b.MOVIE_ID = m.ID;

-- б) Найти все фильмы, которые имеют «двойников» по названию
SELECT a.TITLE, COUNT(*) AS DOUBLE_MOVIE
FROM movie_title a
WHERE a.LANGUAGE_ID = 'ru'
GROUP BY a.TITLE
HAVING COUNT(*) > 1;
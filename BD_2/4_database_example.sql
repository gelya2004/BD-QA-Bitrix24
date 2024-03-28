CREATE INDEX heroes ON heroes(MOVIE_ID, PEOPLE_ID);
-- Поиск всех актеров, снимавшихся в конкретном фильме:
SELECT a.NAME
FROM people AS a
JOIN heroes AS b ON a.ID = b.PEOPLE_ID
WHERE b.MOVIE_ID = 3;

-- Выбор режиссера конкретного фильма:
SELECT a.NAME
FROM people AS a
JOIN movie_professions AS b ON a.ID = b.PEOPLE_ID
WHERE b.MOVIE_ID = 6 AND b.PROFESSIONS_ID = 1;
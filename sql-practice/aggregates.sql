SELECT COUNT(*) FROM cats;

SELECT name, MAX(birth_year) FROM cats;

SELECT name, MIN(birth_year) FROM cats;

SELECT name, birth_year FROM cats
WHERE birth_year = (SELECT MAX(birth_year) FROM cats)
   OR birth_year = (SELECT MIN(birth_year) FROM cats);

SELECT cats.name AS cat_name, COUNT(toys.name) AS num_toy
FROM cats
JOIN toys ON (cats.id = toys.cat_id)
GROUP BY cat_name;

SELECT cats.name AS cat_name, COUNT(toys.name) AS num_toy
FROM cats
JOIN toys ON (cats.id = toys.cat_id)
GROUP BY cat_name
HAVING num_toy > 1;

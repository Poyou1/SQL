Table 1 Food
+----+---------------+----------+---------------+----------------+-------+
| id | kind          | calories | carbohydrates | made           | price |
+----+---------------+----------+---------------+----------------+-------+
|  1 | rye bread     |      265 |            49 | all countries  |     2 |
|  2 | pork          |      240 |             0 | most countries |     4 |
|  3 | tomato        |       18 |             4 | most countries |     2 |
|  4 | apple         |       52 |            14 | all countries  |     5 |
|  5 | olive oil     |      900 |             0 | most countries |     7 |
|  6 | cake          |      300 |            60 | all countries  |     3 |
|  7 | ice cream     |      200 |            20 | all countries  |     3 |
|  8 | blueberry jam |      210 |            60 | most countries |     6 |
|  9 | salmon        |      140 |             0 | most countries |    10 |
| 10 | milk          |       50 |             5 | most countries |     3 |
+----+---------------+----------+---------------+----------------+-------+

Table 2 Drink
+----+--------------+---------+----------+----------------+---------------------------+-------+
| id | type         | alcohol | calories | made           | color                     | price |
+----+--------------+---------+----------+----------------+---------------------------+-------+
|  1 | water        | no      |        0 | all countries  | colorless                 |     1 |
|  2 | orange juice | no      |       45 | most countries | orange                    |     2 |
|  3 | coca cola    | no      |       40 | most countries | dark                      |     1 |
|  4 | beer         | yes     |       45 | most countries | golden or dark            |     3 |
|  5 | whiskey      | yes     |      250 | most countries | golden or dark            |    20 |
|  6 | wine         | yes     |       80 | most countries | red or white              |    15 |
|  7 | sangria      | yes/no  |       80 | most countries | red or dark               |    13 |
|  8 | fanta        | no      |       33 | most countries | orange/dark/purple/yellow |     1 |
|  9 | tequila      | yes     |      230 | most countries | colorless or gold         |    25 |
| 10 | podpiwek     | no      |       40 | Poland         | dark                      |     2 |
+----+--------------+---------+----------+----------------+---------------------------+-------+

1. SELECT made FROM Food; SELECT DISTINCT made FROM Food; (Show column + no duplicate values in column)

2. SELECT * FROM Food WHERE kind="ice cream"; (Show desired row from column) 

3. SELECT * FROM Food WHERE kind="tomato" AND id="3"; (Selecting values from two columns)

4. SELECT * FROM Food WHERE kind="apple" OR id="9"; (Selecting different values from two different columns or multiple values from the same column)

5. SELECT * FROM Food ORDER BY kind; SELECT * FROM Food ORDER BY kind DESC; (Sort a column alphabetically and in reverse order)

6. SELECT * FROM food ORDER BY kind,made; (Sort two columns alphabetically)

6. SELECT * FROM Food LIMIT 5; (Number of lines)

7. SELECT * FROM food WHERE carbohydrates IS NULL; SELECT * FROM food WHERE carbohydrates IS NOT NULL; (Empty and non-empty values)

8. SELECT * FROM Food WHERE id IN(4,7); (A few specific numbers)

9. SELECT * FROM Food WHERE id BETWEEN 3 AND 8; (Numbers in a range)

10. SELECT * FROM Food WHERE kind LIKE "%k"; (Select values by letter where % - many letters, _ - one letter, sensitive to uppercase and lowercase letters)

11. SELECT price FROM Food WHERE price>5; (Shows number less/greater than, =><)


Aggregate functions

1. SELECT MIN/MAX(id) FROM Food;

2. SELECT AVG(price) FROM Food; 

3  SELECT SUM(price) FROM Food;

4  SELECT COUNT(price) FROM Food;


Join

1. SELECT Food.kind,Food.calories, Drink.type 
   FROM Food JOIN Drink 
   ON Food.id=Drink.price; (INNER JOIN)

2. SELECT Food.kind, Drink.type, Drink.calories 
   FROM Food LEFT JOIN Drink 
   ON Food.price=Drink.id; (LEFT JOIN)

3. SELECT Food.id, Food.kind, Drink.id, Drink.type 
   FROM Food RIGHT JOIN Drink 
   ON Food.id= Drink.price; (RIGTH JOIN)


Union

1. SELECT kind FROM Food
   UNOIN 
   SELECT type FROM Drink; (Shows all values (removes duplicate values) from the specified columns from two tables)

2. SELECT kind FROM Food
   UNOIN ALL
   SELECT type FROM Drink; (Shows all values from specified columns from two tables)


Subquery 

1. SELECT kind FROM Food WHERE (id>5 AND price BETWEEN 6 AND 20); (Show kind where id values are greater than 5 and price from 6 to 20)




   











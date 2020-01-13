/*
	Ryan Marinelli
    Assignment One
/*

/*
	Question 1
    It is unlikely, but it depends on the script. If you are using fairly simple joins, then the differences in syntax
    would likely not be too much of an issue. However, it most cases, it would likely not be possible to simply copy and paste your script
*/

/*
	Question 2
    The differences between SQL variants is rather marginal. If you learn SQL in one variant, all the concepts and terms essentially map.
    There might be rather minor differences in syntax, but it is something you should be able to pick up with some additional seaching. 
*/

/* Question 3
 There are four tables: airports,carriers,flights, and planes
*/
SHOW TABLES;

/*
	Question 4
	Query returns summary information on each field
*/
DESCRIBE planes;

/*
	Question 5
*/
SELECT* from flights LIMIT 0,1;

/*
 Question 6
*/

SELECT faa,name,lat,lon from airports LIMIT 0,10;

/*
  Question 7
*/

SELECT* from carriers LIMIT 26,40;

/*
	Question 8
*/
SELECT year,month,day,origin,dest,tailnum,carrier from flights LIMIT 0,10;

/*
	Question 9
*/
SELECT 
  str_to_date(concat(year, '-', month, '-', day), '%Y-%m-%d') AS the_date,
  origin,
  flight,dest,tailnum,carrier
FROM flights
LIMIT 0,10;